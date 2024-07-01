package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	min := 2019
	for i := l; i < r; i++ {
		for j := l+1; j <= r; j++ {
			mod := i *j % 2019
			if min > mod {
				min = mod
			}
		}
		if min == 0 {
			break
		}

	}
	fmt.Println(min)
}
