package main

import "fmt"

func main() {
	var n, div, ans int
	fmt.Scan(&n)

	for i := 1; i <= n; i += 2 {
		div = 0
		for j := 1; j <= i; j++ {
			if i%j == 0 {
				div++
			}
		}
		if div == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}