package main

import (
	"fmt"
	"log"
	"math"
)

func main() {
	var n, x, t int
	if _, err := fmt.Scanf("%d %d %d", n, x, t); err != nil {
		log.Fatalf("error reading input: %v", err)
	}

	fmt.Println(solve(n, x, t))
}

func solve(n, x, t int) int {
	return int(math.Ceil(float64(n)/float64(x))) * t
}