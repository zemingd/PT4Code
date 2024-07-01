package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int64
	fmt.Scan(&a, &b, &c, &d)
	arr := []int64{
		a * c,
		a * d,
		b * c,
		b * d,
	}
	ans := arr[0]
	for i := 1; i < len(arr); i++ {
		if ans < arr[i] {
			ans = arr[i]
		}
	}
	fmt.Println(ans)
}
