package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var digit int
	tmp := 1
	for l := 0; ; l++ {
		if n < tmp {
			digit = l + 1
			break
		}
		tmp *= k
	}

	fmt.Print(digit)
}
