package main
import "fmt"
func main() {
  var a,b int
  fmt.Scan(&a,&b)
  if a < 6 {
    fmt.Println(0)
  } else if a < 13 {
    fmt.Println(b/2)
  } else {
    fmt.Println(b)
  }
}