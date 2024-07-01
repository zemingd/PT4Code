package main

import "fmt"

func search(l, r int) (m int) {
	m = 2019
	for i := l; i < r; i++ {
		for j := i + 1; j <= r; j++ {
			if mod := (i * j) % 2019; m > mod {
				m = mod
			}
			if m == 0 {
				return 0
			}
		}
	}
	return
}

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	min := search(l, r)
	fmt.Println(min)
}
