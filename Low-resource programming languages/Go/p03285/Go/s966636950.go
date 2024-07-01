package main

import "fmt"

func check(n int) bool {
	for cake_price := 0; cake_price <= 100; cake_price += 4 {
		for doughnut_price := 0; doughnut_price+cake_price <= 100; doughnut_price += 7 {
			if cake_price+doughnut_price == n {
				return true
			}
		}
	}
	return false
}

func main() {
	var n int
	fmt.Scan(&n)
	if check(n) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
