package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	if a >= x && a+b <= x {
		fmt.Println("YES")
		return
	}
	fmt.Println("NO")
}
