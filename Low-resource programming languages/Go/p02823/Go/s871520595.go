package main

import "fmt"

func main() {
	var n, a, b, ans int
	fmt.Scan(&n, &a, &b)
	if b-a > 1 {
		ans = (b - a) / 2
	}
	if b-a == 1 {
		k := a - 1
		j := n - b
		if k < j {
			ans = b - 1
		} else {
			ans = n - a
		}
	}

	fmt.Println(ans)
}