package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var digit int
	tmp := k
	for l := 1; ; l++{
		if n < tmp {
			digit = l
			break
		}
		tmp *= k
	}

	fmt.Print(digit)
}
