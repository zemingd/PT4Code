package main 

import (
  "fmt"
  "sort"
)

func main() {
  var a, b, c int
  fmt.Scan(&a, &b, &c)
  
  val := []int{a, b, c}
  sort.Sort(sort.IntSlice(val))
  
  fmt.Println(val[2]- val[1])
}