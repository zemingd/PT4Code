package main

import (
	"fmt"
)

func main() {
	var n int
  	var ans int
  fmt.Scan(&n)
  
  for i := 0; i < n; i++ {
  	ans += i
  }
  
  fmt.Println(ans)
}