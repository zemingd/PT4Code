package main

import "fmt"

func main() {
	var h, n int
	fmt.Scan(&h, &n)
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		h -= a
		if h <= 0 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")

}
