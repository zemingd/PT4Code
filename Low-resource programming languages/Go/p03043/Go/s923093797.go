package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	res := 0.0
	for i := 1; i <= n; i++ {
		p := 1.0 / float64(n)
		for j := i; j < k; j *= 2 {
			p /= 2.0
		}
		res += p
	}
	fmt.Println(res)
}
