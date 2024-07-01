package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scanf("%d %d %d", &a, &b, &x)

	if a > x {
		fmt.Println("NO")
	} else if b-(x-a) < 0 {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}
