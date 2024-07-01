package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	count := 0
	for {
		l, r := -1, -1
		for i := 0; i < n; i++ {
			if l == -1 && h[i] > 0 {
				l, r = i, i
			} else if h[i] > 0 {
				r = i
			}

			if l != -1 && h[i] == 0 {
				break
			}
		}
		if l == -1 {
			break
		}

		count++
		for i := l; i <= r; i++ {
			h[i]--
		}
	}
	fmt.Println(count)
}
