package main
 
import (
	"fmt"
    "math"
    "sort"
)

func main() {

  var list []float64
  for i := 0 ; i< 3; i++ {
    var a float64
    fmt.Scan(&a)
    list = append(list,a)
  }
  sort.Float64s(list)
  
  
  fmt.Printf("%g",math.Abs(list[2]-list[1])+math.Abs(list[1]-list[0]))
}