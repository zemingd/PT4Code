package main

import "fmt"

func main() {
	var n, x, t, res int
	fmt.Scanf("%d %d %d", &n, &x, &t)
	kai := n / x
	ama := n % x
	res = t * kai
	if ama > 0 {
		res = res + t
	}
	fmt.Println(res)
}