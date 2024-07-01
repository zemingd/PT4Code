package main
 
import (
	"fmt"
)
 
func main() {
  var n,p,min,cnt int
  fmt.Scan(&n)
  min = n
  for i := 0; i < n; i++{
  	fmt.Scan(&p)
    if p <= min {
      cnt++
      min = p
    }
  }
  fmt.Printf("&d", cnt)
}