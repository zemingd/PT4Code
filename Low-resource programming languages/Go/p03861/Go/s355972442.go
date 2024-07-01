package main
 
import (
  "fmt"
)
 
func main () {
  var small, large, divider int64
  fmt.Scan(&small, &large, &divider)
  fmt.Printf("%d", large/divider - small/divider)
}