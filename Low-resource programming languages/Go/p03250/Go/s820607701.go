package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	var A, B, C int
	fmt.Sscanf(scanner.Text(), "%d %d %d", &A, &B, &C)

	m := max(A, B, C)
	ans := -1
	switch m {
	case A:
		ans = 10*A + B + C
	case B:
		ans = A + 10*B + C
	case C:
		ans = A + B + 10*C
	}
	fmt.Println(ans)
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
