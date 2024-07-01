package main

import "fmt"

func main() {
	var l, r int32

	fmt.Scan(&l)
	fmt.Scan(&r)

	if r >= l + 2019 {
		r = l + 2019
	}

	answer := int64(2018)
	for i := l; i < r; i++ {
		for j := i + 1; j <= r; j++ {
			rem := (int64(i) * int64(j)) % 2019
			if rem < answer {
				answer = rem
			}
		}
	}
	fmt.Println(answer)
}