package main

import "fmt"

func main() {
	var N, X, Y int
	fmt.Scan(&N, &X, &Y)

	m := make(map[int]int)

	for i := 1; i < N; i++ {
		for j := i + 1; j <= N; j++ {
			path := j - i
			pathX := abs(i-X) + 1 + abs(j-Y)
			pathY := abs(i-Y) + 1 + abs(j-X)
			min := path
			if min > pathX {
				min = pathX
			}
			if min > pathY {
				min = pathY
			}
			m[min]++
		}
	}

	for i := 1; i < N; i++ {
		if d, ok := m[i]; ok {
			fmt.Println(d)
		} else {
			fmt.Println(0)
		}
	}

}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
