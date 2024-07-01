package main
 
import (
  "fmt"
  "math"
)
 
func main() {
  var r int
  fmt.Scanf("%d", &r)
  fmt.Printf("%f\n", 2 * math.Pi * float64(r))
}