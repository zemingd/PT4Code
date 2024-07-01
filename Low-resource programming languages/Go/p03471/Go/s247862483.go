package main

import (
	"fmt"
)

func main() {
	var n,y,a,b,c int
	fmt.Scan(&n,&y)

	for i := 0; i <= n; i++ {
		for j := 0; j <= n - i; j++ {
			sum := 1000 * i + 5000 *j + 10000 * (n-i-j)
			if sum == y {
				fmt.Println(sum)
				c = i
				b = j
				a = n - i - j
				fmt.Println(a,b,c)
				return
			}
		}
	}

	fmt.Println(-1,-1,-1)
}