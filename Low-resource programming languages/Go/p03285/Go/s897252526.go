package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i <= n/4; i++ {
		for j := 0; j <= n/7; j++ {
			p := 4*i + 7*j
			if p == n {
				fmt.Println("Yes")
				return
			} else if p > n {
				break
			}
		}
	}
	fmt.Println("No")
}
