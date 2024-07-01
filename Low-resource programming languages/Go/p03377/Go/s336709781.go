package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	x -= a
	if 0 <= x && x <= b {
		fmt.Println("YES")
		return
	}
	fmt.Println("NO")
}
