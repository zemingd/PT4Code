package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scanf("%d %d", &n, &l)
	originCount := ((1 + l - 1) + (n + l - 1)) * n / 2
	min := 1 + l - 1
	max := n + l - 1
	if max >= 0 && min <= 0 {
		fmt.Println(originCount)
	} else if max < 0 {
		fmt.Println(originCount - max)
	} else if min > 0 {
		fmt.Println(originCount - min)
	}
}
