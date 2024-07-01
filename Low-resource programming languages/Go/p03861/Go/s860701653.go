package main

import "fmt"

func main() {
	// Code for B - Between a and b ...
	var a, b, x int
	fmt.Scanf("%d %d %d", &a, &b, &x)

	var ans int
	if a != 0 {
		ans = (b/x + 1) - ((a-1)/x + 1)
	} else {
		ans = (b/x + 1)
	}
	fmt.Println(ans)
}
