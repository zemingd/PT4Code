package main

import "fmt"

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func dax(in int) int {
	sDiff := 753
	for in > 0 {
		num := in % 1000
		x := abs(753 - num)
		if sDiff > x {
			sDiff = x
		}
		in /= 10
	}
	return sDiff
}

func main() {
	var in int
	fmt.Scan(&in)
	fmt.Println(dax(in))
}
