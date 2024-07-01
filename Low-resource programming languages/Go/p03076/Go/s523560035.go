package main

import (
	"fmt"
)

func main() {
	as := make([]int, 5)
	for i := range as {
		fmt.Scan(&as[i])
	}

	tmpIdx := 0
	tmp := as[tmpIdx] % 10
	for i := 1; i < len(as); i++ {
		r := as[i] % 10
		if r != 0 && r < tmp {
			tmpIdx = i
			tmp = r
		}
	}

	var time int
	for i, a := range as {
		if i != tmpIdx {
			r := a % 10
			if r != 0 {
				time += a - r + 10
			} else {
				time += a
			}
		} else {
			time += a
		}
	}

	fmt.Print(time)
}
