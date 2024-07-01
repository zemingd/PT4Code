package main

import "fmt"

func main() {
	var h, n int
	fmt.Scan(&h, &n)
	atk := 0
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		atk += tmp
	}

	if h-atk <= 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
