package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	b := make([]int, n-1)
	for i, _ := range b {
		fmt.Scan(&b[i])
	}

	ans := 0
	for i, v := range b {
		if i == 0 {
			ans += v
		}
		if i == len(b)-1 {
			ans += v
			return
		}
		if v > b[i+1] {
			ans += b[i+1]
		} else {
			ans += v
		}
	}
}