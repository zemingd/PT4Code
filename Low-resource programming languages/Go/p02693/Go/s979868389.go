package main

import "fmt"

var n, a, b int

func main() {
	fmt.Scan(&n, &a, &b)
	if (b - a + 1) >= n {

		fmt.Println("OK")
	} else {
		fmt.Println("NG")

	}

}
