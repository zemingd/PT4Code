package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scanf("%d %d %d", &n, &a, &b)
	if a == 0 {
		fmt.Print("0")
		return
	}
	d := n / (a + b)
	e := n % (a + b)
	ans := a*d + e
	fmt.Printf("%d", ans)
}
