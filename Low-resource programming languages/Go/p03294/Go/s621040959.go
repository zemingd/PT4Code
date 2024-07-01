package main

import "fmt"

func main() {
	var n, a, out int
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a)
		out += a - 1
	}
	fmt.Println(out)
}
