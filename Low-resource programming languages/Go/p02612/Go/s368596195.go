package main
 
import (
	"fmt"
)
 
func main() {
  var n int
  fmt.Scan(&n)
  res := n % 1000
  if res == 0 {
    fmt.Println(0)
  } else {
    fmt.Println(1000 - res)
  }  
}
