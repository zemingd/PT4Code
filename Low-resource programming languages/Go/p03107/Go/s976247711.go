package main

import "fmt"

func main() {
  var s string
  fmt.Scan(&s)
  cups := map[rune]int{
    '0': 0,
    '1': 0,
  }
  for _, v := range s {
    cups[v]++
  }
  var ans int
  if cups['0'] < cups['1'] {
    ans = cups['0'] * 2
  } else {
    ans = cups['1'] * 2
  }
  fmt.Println(ans)
}