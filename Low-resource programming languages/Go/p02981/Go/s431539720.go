package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	train := a * n
	taxi := b

	if train > taxi {
		fmt.Println(taxi)
	} else {
		fmt.Println(train)
	}
}
