package main

import "fmt"

var moduler = 2019

func main() {
	var l, r int
	fmt.Scan(&l, &r)
	ans := l * (l + 1) % moduler
	if l == 0 || (l <= moduler && r >= moduler) {
		fmt.Println(0)
	} else {
		for i := l; i < r; i++ {
			for j := l + 1; j <= r; j++ {
				mod := i * j % moduler
				if mod < ans {
					ans = mod
				}
			}
		}
	}
	fmt.Println(ans)
}
