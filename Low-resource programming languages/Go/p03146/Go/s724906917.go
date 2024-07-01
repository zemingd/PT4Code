package main

import "fmt"

func main() {
	// Code for B - Collatz Problem
	var s int
	fmt.Scanf("%d", &s)

	var i int = 2
	var aAfter int
	var aBefore int = s
	a := make(map[int]int)
	for {
		if aBefore%2 == 0 {
			aAfter = aBefore / 2
		} else {
			aAfter = 3*aBefore + 1
		}

		a[aAfter]++
		if a[aAfter] == 2 {
			fmt.Println(i)
			break
		}
		aBefore = aAfter
		i++
	}
}
