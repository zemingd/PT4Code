package main

import "fmt"

func main() {
	var (
		l   int
		r   int
		min = 10000000000
	)
	fmt.Scan(&l, &r)

	for i := l; i < l+2019; i++ {
		for j := l; j < l+2019; j++ {
			if i < j && j <= r && i >= l {
				if min > (i*j)%2019 {
					min = (i * j) % 2019
				} else {
					continue
				}
			}
		}
	}
	fmt.Println(min)
}