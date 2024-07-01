package main

import "fmt"

func main() {
	var r, g, b int
	fmt.Scanf("%d %d %d", &r, &g, &b)

	m := (r*10+g)*10 + b
	if m%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}