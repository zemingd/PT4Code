package main

import "fmt"

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func main() {
	var n, l, sum, except int
	fmt.Scan(&n, &l)
	minabs := 101
	for i := 0; i < n; i++ {
		sum += l + i
		if minabs > abs(l+i) {
			minabs = abs(l + i)
			except = l + i
		}
	}
	fmt.Println(sum - except)
}
