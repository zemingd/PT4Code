package main

import "fmt"

func main() {
	var r, g, b int
	fmt.Scanf("%d %d %d", &r, &g, &b)

	m := r*100 + g*10 + b
	if m%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}