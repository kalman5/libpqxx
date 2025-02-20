#include <iostream>
#include <set>
#include <vector>

#include "test_helpers.hxx"


// Test program for libpqxx.  Test querying of result column origins.
namespace
{
void test_093()
{
  pqxx::result R, X;

  {
    pqxx::connection conn;
    pqxx::work tx{conn};
    tx.exec0("CREATE TEMP TABLE pqxxfoo (x varchar, y integer, z integer)");
    tx.exec0("INSERT INTO pqxxfoo VALUES ('xx', 1, 2)");
    R = tx.exec("SELECT z,y,x FROM pqxxfoo");
    X = tx.exec("SELECT x,y,z,99 FROM pqxxfoo");

    // tx and connection are closed here; result objects remain
  }

  pqxx::row::size_type
	x = R.table_column(2),
	y = R.table_column(1),
	z = R.table_column(static_cast<int>(0));

  PQXX_CHECK_EQUAL(x, 0u, "Wrong column number.");
  PQXX_CHECK_EQUAL(y, 1u, "Wrong column number.");
  PQXX_CHECK_EQUAL(z, 2u, "Wrong column number.");

  x = R.table_column("x");
  y = R.table_column("y");
  z = R.table_column("z");

  PQXX_CHECK_EQUAL(x, 0u, "Wrong number for named column.");
  PQXX_CHECK_EQUAL(y, 1u, "Wrong number for named column.");
  PQXX_CHECK_EQUAL(z, 2u, "Wrong number for named column.");

  pqxx::row::size_type
	xx = X[0].table_column(static_cast<int>(0)),
	yx = X[0].table_column(pqxx::row::size_type(1)),
	zx = X[0].table_column("z");

  PQXX_CHECK_EQUAL(xx, 0u, "Bad result from table_column(int).");
  PQXX_CHECK_EQUAL(yx, 1u, "Bad result from table_column(size_type).");
  PQXX_CHECK_EQUAL(zx, 2u, "Bad result from table_column(string).");

  for (pqxx::row::size_type i=0; i < R[0].size(); ++i)
    PQXX_CHECK_EQUAL(
	R[0][i].table_column(),
	R.table_column(i),
	"Bad result from column_table().");

  PQXX_CHECK_THROWS_EXCEPTION(
	R.table_column(3),
	"table_column() with invalid index didn't fail.");

  PQXX_CHECK_THROWS_EXCEPTION(
	R.table_column("nonexistent"),
	"table_column() with invalid column name didn't fail.");

  PQXX_CHECK_THROWS_EXCEPTION(
	X.table_column(3),
	"table_column() on non-table didn't fail.");
}
} // namespace


PQXX_REGISTER_TEST(test_093);
