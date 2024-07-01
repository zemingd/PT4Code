package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var ans float64
	for i := 1; i <= n; i++ {
		d := i
		m := float64(n)
		p := 1.0 / m
		if i >= k {
			ans += p
			continue
		}
		for d < k {
			d *= 2
			p *= 0.5
		}
		ans += p
	}
	fmt.Println(ans)
}
