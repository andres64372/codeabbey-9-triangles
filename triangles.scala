import scala.io.StdIn

object Triangles extends App {

  val count = StdIn.readLine().toInt
  for (i <- 1 to count) print(solveTriangles(StdIn.readLine().split(" ").map(_.toInt)) + " ")

  def solveTriangles(triangle: Array[Int]): Int = {
    val a: Int = triangle(0)
    val b: Int = triangle(1)
    val c: Int = triangle(2)
    if ((a <= b + c) && (b <= a + c) && (c <= a + b)) 1 else 0
  }

}
