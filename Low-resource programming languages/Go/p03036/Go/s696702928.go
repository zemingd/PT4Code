package main

import (
	"fmt"
)

func main() {
	var r, d, x int
	fmt.Scan(&r,&d,&x)
    
  	for i := 1; i < 11; i++ {
      ans := r * x - d
      fmt.Println(ans)
      x = ans
  	}
}