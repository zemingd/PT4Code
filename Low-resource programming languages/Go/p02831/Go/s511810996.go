package main

import "fmt"

func main() {
	n := make([]int, 2)
	for i := 0; i < 2; i++ {
		fmt.Scan(&n[i])
	}
	flag := false
	for i := 1; i < n[0]*n[1]; i++ {
		for j := 1; j < n[0]*n[1]; j++ {
			if n[0]*i == n[1]*j {
				fmt.Println(n[0] * i)
				flag = true
				break
			}
		}
		if flag {
			break
		}
	}
}
