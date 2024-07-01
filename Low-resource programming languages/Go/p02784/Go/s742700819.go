package main

import "fmt"

func main() {
	var h int
	var n int

	fmt.Scan(&h)
	fmt.Scan(&n)

	hh := h

	for i := 0; i < n; i++ {
		a := 0
		fmt.Scan(&a)
		hh = hh - a
	}
	if hh <= 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
