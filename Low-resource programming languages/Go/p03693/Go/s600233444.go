package main

import "fmt"

func main() {
	var r, g, b int
	fmt.Scan(&r, &g, &b)
	rgb := 100 * r + 10 * g + b
	if rgb % 4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

