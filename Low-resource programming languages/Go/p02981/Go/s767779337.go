package main

import (
	"fmt"
)

func main() {
	fmt.Scan(&n, &a, &b)
	if train := n * a; train <= b {
		fmt.Println(train)
	} else {
		fmt.Println(b)
	}
}
