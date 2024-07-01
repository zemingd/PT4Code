package main

import (
	"fmt"
)

func main() {
  var a, b, c int
  fmt.Scanf("%d %d %d", &a, &b, &c)

  cnt := map[int]int{}
  cnt[a]++
  cnt[b]++
  cnt[c]++
  ans := "No"
  
  for _, v := range cnt {
    if v == 2 {
      ans ="Yes"
    }
  }
  fmt.Printf("%s\n", ans)
}