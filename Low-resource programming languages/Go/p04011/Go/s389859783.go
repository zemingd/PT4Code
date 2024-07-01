package main

import "fmt"

func main() {
	var n, k, x, y int
	fmt.Scanf("%d\n%d\n%d\n%d\n", &n, &k, &x, &y)

	if n-k > 0 {
		fmt.Println(k*x + (n-k)*y)
	} else {
		fmt.Println(n * x)
	}
}
