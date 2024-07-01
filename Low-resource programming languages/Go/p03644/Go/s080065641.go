package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	max_n, max_cnt := 1, 0
	for i := n; i > 0; i-- {
		num := i
		cnt := 0
		for {
			if num % 2 == 0 {
				cnt++
				num /= 2
			} else {
				break
			}
		}
		if cnt > max_cnt {
			max_cnt = cnt
			max_n = i
		}
	}

	fmt.Println(max_n)
}