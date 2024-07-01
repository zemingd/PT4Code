package main
import . "fmt"
func main() {
  var n int
  Scan(&n)
  switch n {
    case 1,2,3,5,6,9,10,13,17 : Println("No")
    default : Println("Yes")
  }
}