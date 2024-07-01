package main

import (
	"fmt"
)

func main() {
	var n, a, output int
	fmt.Scanf("%d", &n)
	var tmp []int
	var num [100]int
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a)
		tmp = append(tmp, a)
	}

	for i := 0; i < n; i++ {
		num[tmp[i]]++
	}
	for i := 0; i < 100; i++ {
		if num[i] > 0 {
			output++
		}
	}
	fmt.Println(output)
}
