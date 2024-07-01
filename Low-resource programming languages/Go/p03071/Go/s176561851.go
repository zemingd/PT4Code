package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ans := 0
	for i := 0; i < 2; i++ {
		if a < b {
			ans += b
			b--
		} else {
			ans += a
			a--
		}
	}

	fmt.Println(ans)
}
