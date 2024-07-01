package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	as := make([]int, n) // 食べた
	bs := make([]int, n) // 満足度
	cs := make([]int, n-1) // 追加

	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		as[i] = a - 1
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&bs[i])
	}
	for i := 0; i < n-1; i++ {
		fmt.Scan(&cs[i])
	}
	var sum int
	for i , a := range as {
		sum += bs[a]
		if i > 0 {
			if a - 1 == as[i-1] {
				sum += cs[a-1]
			}
		}
	}
	fmt.Println(sum)
}
