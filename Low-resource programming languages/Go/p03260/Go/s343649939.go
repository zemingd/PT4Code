package main

import "fmt"

func main() {
	var A, B int
	var ans string

	if (A*B)%2 == 1 {
		ans = "Yes"
	} else {
		ans = "No"
	}

	fmt.Println(ans)
}
