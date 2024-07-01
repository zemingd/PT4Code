package main
import (
  "fmt"
  "sort"
)

func main() {
  var n int
  fmt.Scan(&n)
  a := aArray(n)
  b := make([]int, 0)
  for _, v := range a {
    b = append(b, v)
  }
  sort.Sort(sort.IntSlice(b))
  size := len(b)
  max := b[size-1]
  big := b[size-2]
  ind := index(max, a)
  switch {
    case max == big:
    for i := 0; i < n; i++{
      fmt.Println(max)
    }
    case max != big:
    for i := 0; i < n; i++{
        if i == ind {
          fmt.Println(big)
        }else{
          fmt.Println(max)
        }
      }
    }
}

func aArray(n int) []int{
  var d int
  a := make([]int, 0)
  for i := 0; i < n; i++ {
    fmt.Scan(&d)
   	a = append(a, d)
  	}
  return a
}
  

func index(m int, a []int) int {
  var ind int
  for i, v := range a {
    if ind == 0 {
      switch {
    	case v == m :
      		ind = i
      }
    }
  }
  return ind
}