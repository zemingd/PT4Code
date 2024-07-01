package main
import "fmt"
func main() {
  var a,b,m int
  fmt.Scan(&a,&b)
  m = 0
  if a < b {
    m += b
    b--
  } else {
    m += a
    a--
  }
  if a < b {
    m += b
    b--
  } else {
    m += a
    a--
  }
  fmt.Println(m)
}