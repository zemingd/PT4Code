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
		sum := 0
		flg := false
		for i := 0; i < n; i++ {
			if arr[i] > 0 {
				arr[i]--
				if !flg {
					count++
				}
				flg = true
			} else {
				flg = false
			}
			sum += arr[i]
		}
		if sum == 0 {
			break
		}
	}
	fmt.Println(count)
}