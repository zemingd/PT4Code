package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)

	ans := "NO"
	if a+b >= x && a <= x {
		ans = "YES"
	}
	fmt.Println(ans)
}
