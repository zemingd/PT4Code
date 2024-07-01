package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ans := float64(0)
	for i := 1; i < n+1; i++ {
		a := i
		for ;; {
			if a >= k {
				a /= i
				break
			}
			a *= 2
		}
		
		ans += 1.0/float64(n)/float64(a)
	}
	fmt.Println(ans)
}
