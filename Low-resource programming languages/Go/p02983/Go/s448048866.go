package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)
	if 2020 <= r-l {
		fmt.Println(0)
		return
	}
	ans := 3000
	for i := l; i <= r-1; i++ {
		for j := l + 1; j <= r; j++ {
			m := i * j % 2019
			if m < ans {
				ans = m
			}
		}
	}
	fmt.Println(ans)
}
