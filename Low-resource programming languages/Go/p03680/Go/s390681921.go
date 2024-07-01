package main

import "fmt"

func main() {
	var n int
	a := make([]int, n+1)
	for i := range a {
		fmt.Scan(&a[i])
	}
	fmt.Println(train(n, a))
}

func train(n int, a []int) int {
	cnt, pos := 1, 1
	h := make([]bool, n+1)
	for {
		pos = a[pos-1]
		if pos == 2 {
			return cnt
		}
		cnt++
		if h[pos] {
			return -1
		}
		h[pos] = true
	}
}
