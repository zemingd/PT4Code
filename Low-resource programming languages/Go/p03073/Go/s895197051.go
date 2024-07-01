package main

import "fmt"

func main() {
  var s string
  fmt.Scan(&s)
  var a []int

  list := map[rune]int{
    '1': 1,
    '0': 0,
  }
  for _, v := range s {
    a = append(a, list[v])
  }
  invert := map[int]int{
    1: 0,
    0: 1,
  }
  var count int
  for i := 1; i < len(a); i++ {
    if a[i] == a[i-1] {
      a[i] = invert[a[i]]
      count++
    }
  }
  fmt.Println(count)
}