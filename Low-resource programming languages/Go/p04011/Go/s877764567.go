package main

import (
	"fmt"
)

func main() {
	value := make([]int, 4)

	for i := 0; i < len(value); i++ {
		fmt.Scan(&value[i])
	}
	//fmt.Printf("%d", value)

	ans := calc(value[0], value[1], value[2], value[3])

	fmt.Printf("%d", ans)
}

func calc(a, b, c, d int) int {
	if a < b {
		ans := a * c
		return ans
	}
	price1 := b * c
	price2 := (a - b) * d

	ans := price1 + price2
	return ans
}