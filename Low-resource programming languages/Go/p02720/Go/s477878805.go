package main

import (
	"fmt"
)

func abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}

func main() {
	var k, i, num, current, prev, tmp int
	fmt.Scan(&k)
	for {
		i++
		if i < 10 {
			num++
		} else {
			tmp = i
			prev = tmp % 10
			current = prev
			for tmp != 0 && abs(current-prev) <= 1 {
				tmp /= 10
				prev = current
				current = tmp % 10
			}
			if tmp == 0 {
				num++
			}
		}
		if num == k {
			fmt.Println(i)
			return
		}
	}
}
