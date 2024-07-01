package main

import (
	"fmt"
)

func main() {
	var townCount, numK int
	fmt.Scanf("%d %d", &townCount, &numK)

	lines, _ := intScanln(townCount)

	path, before, loop := parseLines(lines)
	loopPos := (numK - before) % loop
	townPos := path[before+loopPos]

	fmt.Printf("%d \n", townPos+1)
}

func parseLines(lines []int) ([]int, int, int) {
	var path []int
	from := 0
	path = append(path, 0)
	for {
		to := lines[from] - 1
		pos := contains(path, to)
		if pos == -1 {
			// 無いとき
			path = append(path, to)
			from = to
			continue
		}

		// ある時 (どこかでloop してる
		beforeCount := pos
		loopCount := len(path) - pos
		return path, beforeCount, loopCount
	}
}

// Checker
func contains(s []int, e int) int {
	for k, v := range s {
		if e == v {
			return k
		}
	}
	return -1
}

// Reader
func intScanln(n int) ([]int, error) {
	x := make([]int, n)
	y := make([]interface{}, len(x))
	for i := range x {
		y[i] = &x[i]
	}
	n, err := fmt.Scanln(y...)
	x = x[:n]
	return x, err
}
