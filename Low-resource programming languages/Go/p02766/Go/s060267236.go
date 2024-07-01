package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var digit int
	if n < k {
		digit = 1
	} else {
		digit = 1
		tmp := n / k
		if tmp < k {
			digit++
			tmp /= k
		}
	}
	
	fmt.Print(digit)
}
