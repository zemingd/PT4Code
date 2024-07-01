package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var num, last, stat, res int
	fmt.Scan(&last)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&num)
		if num > last {
			if stat == 1 {
				res++
			} else {
				stat = 1
			}
		}
		if num < last {
			if stat == -1 {
				res++
			} else {
				stat = -1
			}
		}
		last = num
	}
	fmt.Print(res)
}
