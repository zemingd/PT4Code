package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	fmt.Println(donuts(n))
}

func donuts(n int) string {
	for i := 0; i < 25; i++ {
		for j := 0; j < 15; j++ {
			if 4*i+7*j == n {
				return "Yes"
			}
		}
	}
	return "No"
}
