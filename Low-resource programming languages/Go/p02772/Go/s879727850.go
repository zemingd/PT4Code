package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var app bool
	app = true

	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		if a % 2 == 0 {
			if !(a % 3 == 0 || a % 5 == 0) {
				app = false
				break
			} 
		}
	}

	if app {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
}
