package main

import "fmt"

func main() {
	var n, tmp, last int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		if tmp == last+1 {
			last += 1
		}
	}
	if last == 0 {
		fmt.Printf("%d", -1)
	} else {
		fmt.Printf("%d", n-last)
	}
}
