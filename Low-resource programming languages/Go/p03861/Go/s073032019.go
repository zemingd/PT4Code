package main
 
import (
  "fmt"
)
 
func main () {
  var small, large, divider int
  fmt.Scan(&small, &large, &divider)
  if small != large{
  	fmt.Printf("%d", large/divider - (small-1)/divider)
  } else {
    fmt.Printf("%d", 0)
  }
}