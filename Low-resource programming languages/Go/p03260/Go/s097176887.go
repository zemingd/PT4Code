package main
import . "fmt"
func main() {
  var a,b int
  Scan(&a,&b)
  if a == 2 || b == 2 {
    Println("No")
  } else {
    Println("Yes")
  }
}