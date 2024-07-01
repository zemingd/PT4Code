package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	var d, ans int
	for i := 0; i < n; i++ {
		var l int
		fmt.Scan(&l)

		d += l
		if d <= x {
			ans = i
		}
	}

	fmt.Println(ans+2)
}
