package main

import (
	"fmt"
)

func main() {
	var l, r int64
	fmt.Scan(&l)
	fmt.Scan(&r)

	if r-l >= 2019 {
		fmt.Println(0)
		return
	}

	for i := l; i <= r; i++ {
		if i%2019 == 0 {
			fmt.Println(0)
			return
		}
	}

	i := l % 2019
	j := (l + 1) % 2019
	fmt.Println((i * j) % 2019)
}
