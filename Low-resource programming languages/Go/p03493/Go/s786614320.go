package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	cnt := 0
	for i := 0; i < 3; i++ {
      if s[i] == '1' {
			cnt++
		}
	}
	
	fmt.Println(cnt)
	
}