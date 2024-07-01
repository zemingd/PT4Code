package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	if x-a >= 0 && a+b-x >= 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
