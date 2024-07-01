package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		if a%2 == 1 {
			continue
		}
		if a%3 == 0 || a%5 == 0 {
			continue
		}

		fmt.Println("DENIED")
		return
	}
	fmt.Println("APPROVED")
}
