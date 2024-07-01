package main

import (
	"fmt"
)

func main() {
  date := map[int]string{0:"SUN", 1:"MON", 2:"TUE", 3:"WED", 4:"THU", 5:"FRI", 6:"SAT"}
  var s string
  fmt.Scanf("%s", &s)
  
  ans := 0
  for k, v := range date {
    if v == s {
      ans = 7 - k
    }
  }
  fmt.Printf("%d\n", ans)
}