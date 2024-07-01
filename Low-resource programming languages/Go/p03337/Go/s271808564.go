package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var A, B int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d", &A, &B)

	fmt.Println(max(A+B, A-B, A*B))
}

func max(ns ...int) int {
	ret := math.MinInt64
	for _, n := range ns {
		if n > ret {
			ret = n
		}
	}
	return ret
}
