package configuracao
import java.sql.*
import java.util.Properties

fun main(){
            /**
             * Program to list databases in MySQL using Kotlin
             */
            object Login {

                internal var conn: Connection? = null
                internal var username = "MoniToll" // provide the username
                internal var password = "MoniToll123" // provide the corresponding password

                @JvmStatic fun main(args: Array<String>) {
                    // make a connection to MySQL Server
                    getConnection()
                    // execute the query via connection object
                    executeMySQLQuery()
                }

                fun executeMySQLQuery() {
                    var stmt: Statement? = null
                    var resultset: ResultSet? = null

                    try {
                        stmt = conn!!.createStatement()
                        resultset = stmt!!.executeQuery("SELECT * FROM Usuario;")

                        if (stmt.execute("SELECT * FROM Usuario;")) {
                            resultset = stmt.resultSet
                        }

                        while (resultset!!.next()) {
                            println(resultset.getString("MoniToll"))
                        }
                    } catch (ex: SQLException) {
                        // handle any errors
                        ex.printStackTrace()
                    } finally {
                        // release resources
                        if (resultset != null) {
                            try {
                                resultset.close()
                            } catch (sqlEx: SQLException) {
                            }

                            resultset = null
                        }

                        if (stmt != null) {
                            try {
                                stmt.close()
                            } catch (sqlEx: SQLException) {
                            }

                            stmt = null
                        }

                        if (conn != null) {
                            try {
                                conn!!.close()
                            } catch (sqlEx: SQLException) {
                            }

                            conn = null
                        }
                    }
                }

                /**
                 * This method makes a connection to MySQL Server
                 * In this example, MySQL Server is running in the local host (so 127.0.0.1)
                 * at the standard port 3306
                 */
                fun getConnection() {
                    val connectionProps = Properties()
                    connectionProps.put("MoniToll", username)
                    connectionProps.put("MoniToll123", password)
                    try {
                        Class.forName("com.mysql.jdbc.Driver").newInstance()
                        conn = DriverManager.getConnection(
                            "jdbc:" + "mysql" + "://" +
                                    "localhost" +
                                    ":" + "3306" + "/" +
                                    "",
                            connectionProps)
                    } catch (ex: SQLException) {
                        // handle any errors
                        ex.printStackTrace()
                    } catch (ex: Exception) {
                        // handle any errors
                        ex.printStackTrace()
                    }
                }
            }
    Output
}