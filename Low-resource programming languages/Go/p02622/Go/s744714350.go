package main
import (
  "fmt"
  //"math"
  // "sort"
  //"regexp"
)
 
func main(){
  var a, b string
  var count int
  fmt.Scan(&a)
  fmt.Scan(&b)
  for i := 0; i < len(a); i++ {
    if a[i:i + 1] != b[i: i + 1] {
      count++
    }
  }
  fmt.Printf("%d\n",count)
}