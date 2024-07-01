package main

import "math"
import "fmt"

func main() {
  var x, n float64
  fmt.Scan(&x, &n)
  
  fmt.Println(int(math.Floor(x * n)))
}