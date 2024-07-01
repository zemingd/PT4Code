package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c, &k)
	ans := 0
	if a > 0 {
		if a >= k {
			ans += k
		} else {
			ans += a
		}
		k -= a
	}
	if b > 0 && k > 0 {
		k -= b
	} else if k > 0 {
		ans -= k
	}

	fmt.Println(ans)
}