package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	// 3 [3 1 2]
	// 5 [5 3 1 2 4]
	// 6 [6 4 2 1 3 5]
	w := n
	f := true
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
		b[i] = a[w-1]
		if f {
			w -= 2
		} else {
			w += 2
		}
		if w <= 0 {
			f = false
			if w == 0 {
				w = 1
			} else {
				w = 2
			}
		}
	}
	fmt.Printf("%d", b[0])
	for i := 1; i < n; i++ {
		fmt.Printf(" %d", b[i])
	}
	fmt.Println("")
}