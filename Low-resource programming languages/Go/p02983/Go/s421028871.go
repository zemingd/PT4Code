package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	l %= 2019
	r %= 2019
	if r < l {
		r += 2019
	}

	ans := 2019
	for i := l; i < r; i++ {
		for j := i + 1; j <= r; j++ {
			if v := (i * j) % 2019; v < ans {
				ans = v
			}
		}
	}
	fmt.Println(ans)
}
