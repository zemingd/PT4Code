package main

import (
	"fmt"
)

func main() {
	var n, a int
	fmt.Scanf("%d", &n)

  	max := 0
	ans := 0
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a)
        if max > a {
          	ans += max - a
        }
        if max < a {
          	max = a
        }
	}
	fmt.Printf("%d\n", ans)
}
