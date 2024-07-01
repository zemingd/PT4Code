package main

import "fmt"

func f(i int) int {
	n := 0
	for i%2 == 0 {
		n++
		i /= 2
	}
	return n
}

func main() {
	var n int
	fmt.Scan(&n)
	ans, x := 0, 0
	for i := 1; i <= n; i++ {
		y := f(i)
		if x <= y {
			ans, x = i, y
		}
	}
	fmt.Println(ans)
}
