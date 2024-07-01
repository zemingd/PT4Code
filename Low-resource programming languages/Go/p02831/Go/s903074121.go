package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var big, small int
	if a > b {
		big, small = a, b
	} else {
		big, small = b, a
	}
	for i := 1; ; i++ {
		if big*i%small == 0 {
			fmt.Println(big * i)
			return
		}
	}
}
