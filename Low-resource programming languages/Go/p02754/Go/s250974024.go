package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	ans := 0
	for i:=0; i<=n; {
		ans += a
		i += a+b
	}
	fmt.Println(ans)
}
