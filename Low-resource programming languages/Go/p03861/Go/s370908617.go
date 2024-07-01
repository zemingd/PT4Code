package main
 
import (
  "fmt"
)
 
func main () {
  var small, large, divider int
  fmt.Scan(&small, &large, &divider)
  if small == large && small % divider != 0 {
    fmt.Printf("%d", 0)
  } else if small == large && small % divider == 0 {
    fmt.Printf("%d", 1)
  } else {
  	fmt.Printf("%d", large/divider - (small-1)/divider)    
  }
}