package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)

	if 0 <= (x-a) && (x-a) <= b {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
