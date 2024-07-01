package main

import (
	"fmt"
)

func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)
	x = x / 50
	var tmp, ans int = 0, 0
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				tmp = 10*i + 2*j + k
				if tmp != 0 {
					if x == tmp {
						ans++
					}
				}
			}
		}
	}
	fmt.Println(ans)
}
