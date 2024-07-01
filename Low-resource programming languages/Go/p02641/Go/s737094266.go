package main

import "fmt"

func main() {
	var x, n int
	fmt.Scan(&x, &n)

	l := make([]int, 100)

	var tmp int
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		l[tmp-1] = 1
	}

	high := x
	for {
		if l[high-1] == 0 {
			break
		}
		high++
		if high == 101 {
			break
		}
	}

	low := x
	for {
		if l[low-1] == 0 {
			break
		}
		low -= 1
		if low == 0 {
			break
		}
	}

	if high-x < x-low {
		fmt.Println(high)
	} else {
		fmt.Println(low)
	}
}
