package main
import (
  "fmt"
  "sort"
)

func main() {
	var n, d, ind int
  	a := make([]int, 0)
  	fmt.Scan(&n)
  for i := 0; i < n; i++ {
    fmt.Scan(&d)
   		a = append(a, d)
  	}
  b := make([]int, 0)
  for _, v := range a {
    b = append(b, v)
  }
  sort.Sort(sort.IntSlice(b))
  size := len(b)
  max := b[size-1]
  big := b[size-2]
  for i, v := range a {
    if ind == 0 {
      switch {
    	case v == max :
      		ind = i
      }
    }
  }
  switch {
    case max == big:
    for i := 0; i < n; i++{
      fmt.Println(max)
    }
    case max != big:
    	a[ind] = big
      for i, v := range a {
        if i == ind {
          fmt.Println(v)
        }else{
          fmt.Println(max)
        }
      }
    }
}