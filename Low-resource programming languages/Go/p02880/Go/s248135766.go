package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	r := "No"
SOTO:
	for i := 1; i <= 9; i++ {
		for j := 1; j <= 9; j++ {
			if i*j == n {
				r = "Yes"
				break SOTO
			}
		}
	}
	fmt.Println(r)
}
