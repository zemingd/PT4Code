package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	min := 2019
	for i := l; i <= r; i++ {
		for j := i; j <= r; j++ {
			if i == j || i > j {
				continue
			}
			cal := (i * j) % 2019
			if cal < min {
				min = cal
			}
		}
	}
	fmt.Println(min)
}
