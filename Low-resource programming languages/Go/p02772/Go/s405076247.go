package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	for _, v := range a {
		if v%2 == 0 {
			if v%3 != 0 && v%5 != 0 {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("APPROVED")

}
