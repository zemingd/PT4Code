package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)
	if l == 0 {
		fmt.Println(0)
	}
	min := 2019
	for i := l; i < r; i++ {
		if i % 2019 == 0 {
			fmt.Println(0)
			return
		}
		for j := i + 1; j <= r; j++ {
			cal := (i * j) % 2019
			if cal < min {
				min = cal
			}
		}
	}
	fmt.Println(min)
}
