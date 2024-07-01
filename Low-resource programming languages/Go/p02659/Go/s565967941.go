package main
 
import (
  "fmt"
  "math"
)
 
func main() {
  var a int
  var b float64
  
  fmt.Scan(&a, &b)
  
  result := a * int(math.Round(b * 100))/100
  fmt.Println(result)
}