package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	if x < 4 {
		fmt.Println(1)
		return
	}

	minDiff := 9999
	for i := 0; i < x; i++ {
		b := i + 2
		for bb := b * b; bb <= x; bb *= b {
			if x-bb < minDiff {
				minDiff = x - bb
			}
		}
	}
	fmt.Println(x - minDiff)
}
