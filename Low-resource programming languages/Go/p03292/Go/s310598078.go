package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	as := make([]int, 3)
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d %d", &as[0], &as[1], &as[2])

	fmt.Println(max(as...) - min(as...))
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

func min(ns ...int) int {
	ret := math.MaxInt64
	for _, n := range ns {
		if n < ret {
			ret = n
		}
	}
	return ret
}
