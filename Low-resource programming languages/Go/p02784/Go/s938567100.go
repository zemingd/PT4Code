package main

import "fmt"

func main() {
	var h int
	var n int

	fmt.Scan(&h)
	fmt.Scan(&n)

	hh := h

	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		hh = hh - a
	}

	fmt.Println(hh)

	if hh <= 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
