package main
 
import (
  "fmt"
)
 
func main () {
  var small, large, divider int
  fmt.Scan(&small, &large, &divider)
  fmt.Printf("%d", large/divider - (small-1)/divider)
}