package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c, &k)

	var sums int

	//aNum := k - a
	bNum := k - a - b
	cNum := k - a - b - c

	if bNum <= 0 {
		if a >= k {
			sums = k
		} else {
			sums = a
		}
	} else {
		if cNum <= 0 {
			sums = a
		} else {
			sums = a - c
		}
	}
	fmt.Println(sums)
}
