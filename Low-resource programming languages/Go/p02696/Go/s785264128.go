package main

import "fmt"

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)

	ans := 0
	for i := 1; i <= n; i++ {
		temp := (a * i / b) - a*(i/b)
		if temp > ans {
			ans = temp
		}
	}
	fmt.Println(ans)
}