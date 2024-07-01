package main

import (
	"fmt"
)

func main() {
	var (
		k, s, count int
	)
	fmt.Scan(&k, &s)

	for i := 0; i <= k; i++ {
		for j := 0; j <= k; j++ {
			kk := s - i - j
			if i+j+kk == s {
				count++
			}
		}
	}
	fmt.Println(count)
}
