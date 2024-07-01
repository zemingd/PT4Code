package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int64, n+1)
	for i := 0; i < n+1; i++ {
		fmt.Scan(&a[i])
	}
	b := make([]int64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}

	var maxCount int64 = 0
	for i := 0; i < n; i++ {
		// i番目の敵をできるだけ倒す
		if b[i] < a[i] {
			maxCount += b[i]
			b[i] = 0
		} else {
			maxCount += a[i]
			b[i] -= a[i]
		}
		//i+1番目の敵をできるだけ倒す
		if b[i] < a[i+1] {
			maxCount += b[i]
		} else {
			maxCount += a[i+1]
		}
	}
	fmt.Println(maxCount)
}
