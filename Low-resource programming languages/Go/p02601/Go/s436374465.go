package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	var k int
	fmt.Scan(&k)
	var cnt int
	for b <= a {
		b *= 2
		cnt++
	}
	for c <= b {
		c *= 2
		cnt++
	}
	if k >= cnt {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
