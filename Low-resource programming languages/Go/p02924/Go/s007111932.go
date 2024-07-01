package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanln(&N)
	fmt.Println((N - 1) * N / 2)
}
