package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ans := 0.0
	for i := 1; i <= n; i++ {
		v := i
		p := 1.0 / float64(n)
		for v < k {
			p /= 2.0
			v *= 2
		}
		ans += p
	}
	fmt.Println(ans)
}
