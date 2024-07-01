package main

import "fmt"

func main() {
	var k int

	fmt.Scan(&k)
	fmt.Println(solve(k))
}

func solve(k int) int {
	init := 7 % k

	if init == 0 {
		return 1
	}

	x := (init*10 + 7) % k
	for i := 2; true; i++ {
		if x == 0 {
			return i
		} else if x == init {
			return -1
		} else {
			x = (x*10 + 7) % k
		}
	}

	return -1
}
