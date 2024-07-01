package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	x := make([]int, n)
	for i := range x {
		fmt.Scan(&x[i])
	}

	y := sort(x)
	l := n / 2
	y1 := y[l - 1]
	y2 := y[l]

	for _, v := range x {
		var b int
		if (v <= y1) {
			b = y2
		} else {
			b = y1
		}
		fmt.Println(b)
	}
}

func sort(a []int) []int {
	b := make([]int, len(a))
	for i := range b {
		b[i] = a[i]
	}

	l := len(a)
	for i := 0; i < l; i++ {
		for j := l - 1; j > i; j-- {
			if b[j-1] > b[j] {
				b[j-1], b[j] = b[j], b[j-1]
			}
		}
	}

	return b
}
