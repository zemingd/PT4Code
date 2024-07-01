package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	if n%2 == 1 {
		fmt.Println(0)
	} else {
		ans := 0
		m := n / 2

		for i := 5; i <= m; i *= 5 {
			ans += m / i
		}
		fmt.Println(ans)
	}
}
