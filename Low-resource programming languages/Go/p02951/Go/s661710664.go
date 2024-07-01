package main
import   "fmt"

func main() {
  var a, b, c int
  fmt.Scan(&a, &b, &c)
  
  x := c - (a - b)
  if x < 0 {
    fmt.Println(0)
  }else{
    fmt.Println(x)
  }
}
