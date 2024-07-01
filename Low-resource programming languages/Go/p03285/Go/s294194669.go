package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	buy := "No"
	for i := 0; i <= n/4; i++ {
		for j := 0; j < n/7; j++ {
			if 4*i+7*j == n {
				buy = "Yes"
				break
			}
		}
	}

	fmt.Println(buy)
}
