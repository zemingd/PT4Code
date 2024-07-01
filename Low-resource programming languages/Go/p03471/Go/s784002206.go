package main

import (
	"fmt"
)

func main() {
	var n, y int
	fmt.Scan(&n, &y)

	var ok bool
L:
	for i := 0; i <= n; i++ {
		for j := 0; j <= n-i; j++ {
			for k := 0; k <= n-i-j; k++ {
				flag1 := i+j+k == n
				flag2 := 10000*i+5000*j+1000*k == y
				if flag1 && flag2 {
					fmt.Printf("%d %d %d\n", i, j, k)
					ok = true
					break L
				}
			}
		}
	}

	if !ok {
		fmt.Println("-1 -1 -1")
	}
}