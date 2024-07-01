package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	fmt.Println(answer(n))
}

func answer(n int) int64 {
	var res int64 = 0
	for i:=1; i<=n; i++ {
		if i%3!=0 && i%5!=0 {
			res += int64(i)
		}
	}
	return res
}
