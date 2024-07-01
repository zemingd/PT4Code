package main

import "fmt"

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	count := 0
	for i := 0; i < n; i++ {
		var tmp int64
		_, _ = fmt.Scan(&tmp)
		for tmp % 2 == 0 {
			tmp = tmp / 2
			count++
		}
	}
	fmt.Println(count)
}