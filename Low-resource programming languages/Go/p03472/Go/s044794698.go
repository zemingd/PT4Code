package main
import (
  "fmt"
  "sort"
)

func max(arr []int) int {
  num := 0
  for _, a := range arr {
    if num < a {
      num = a
    }
  }
  return num
}

func main() {
  var n, h int
  fmt.Scan(&n, &h)
  as := make([]int, n)
  bs := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&as[i], &bs[i])
  }
  sort.Ints(bs)
  maxA := max(as)
  result := 0
  cnt := 0
  for {
    if h < 0 {
      break
    }
    if n-1-cnt < 0 {
      if h%maxA == 0 {
        result += h/maxA
      } else {
        result += h/maxA + 1
      }
      break
    }
    b := bs[n-1-cnt]
    if b <= maxA {
      if h%maxA == 0 {
        result += h/maxA
      } else {
        result += h/maxA + 1
      }
      break
    }
    h -= b
    result++
    cnt++
  }
  fmt.Println(result)
}