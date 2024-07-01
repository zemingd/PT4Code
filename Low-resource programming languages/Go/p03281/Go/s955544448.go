package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var ans int
	for i := 1; i <= n; i += 2 {
		var count int
		for j := 1; j <= n; j += 2 {
			if i%j == 0 {
				count++
			}
		}
		if count == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}
