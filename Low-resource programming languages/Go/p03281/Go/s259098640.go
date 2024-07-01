package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	c := 0
	for i := 0; i <= N; i++ {
		if i%2 == 0 {
			continue
		}
		tmp := 0
		for num := 1; num <= N; num++ {
			if i%num == 0 {
				tmp++
			}
		}
		if tmp == 8 {
			c++
		}
		// fmt.Println(i, tmp)
	}
	fmt.Print(c)
}
