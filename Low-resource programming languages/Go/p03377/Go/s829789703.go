package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scanf("%d %d %d\n", &a, &b, &x)

	if a > x || a+b < x {
		fmt.Println("NO")
		return
	}
	fmt.Println("YES")
}
