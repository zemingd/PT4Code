package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	var min int
	ans := 1000000000
	for i := l; i < r; i++ {
		for j := i + 1; j <= r; j++ {
			min = i * j % 2019
			if min < ans {
				ans = min
			}
		}
	}

	fmt.Println(ans)
}
