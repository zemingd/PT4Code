package main

import "fmt"

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		_, _ = fmt.Scan(&tmp)
		arr[i] = tmp
	}

	count := 0
	for {
		flg := false
		sum := 0
		for i := 0; i < n; i++ {
			sum += arr[i]
			if arr[i] > 0 {
				arr[i]--
				flg = true
			} else if flg || i >= n - 1 {
				count++
				flg = false
			}
		}
		if sum <= 0 {
			break
		}
	}
	fmt.Println(count)
}