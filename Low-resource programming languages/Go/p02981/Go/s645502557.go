package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	t := n * a
	if t > b {
		fmt.Println(b)
	} else {
		fmt.Println(t)
	}
}
