package main
 
import (
	"fmt"
)
 
func main() {
  var n,m,min,max int
  fmt.Scanf("%d %d",&n, &m)
  if n < m {
    min = n
    max = m
  } else {
    min = m
    max = n
  }
  for i := 0; i < max; i++ {
    fmt.Print(min)
  }
}