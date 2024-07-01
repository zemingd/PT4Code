package main

import "fmt"

func main() {
	var a, b, c, k int64
	fmt.Scan(&a, &b, &c, &k)

	var sums int64

	aNum := k - a
	bNum := k - a - b
	cNum := k - a - b - c

	if aNum <= 0 {
		sums = k
	} else {
		if bNum <= 0 {
			sums = a
		} else {
			if cNum <= 0 {
				sums = a - (k - a - b)
			} else {
				sums = a - c
			}
		}
	}
	fmt.Println(sums)
}
