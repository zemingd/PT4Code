package main

import "fmt"

func main() {
	var h, n int
	fmt.Scanf("%d %d", &h, &n)
	var sum int
	var skill int
	for i := 0; i < n; i++ {
		fmt.Scan(&skill)
		sum += skill
	}
	if sum >= h {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
