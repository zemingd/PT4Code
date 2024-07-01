package main

import "fmt"

var ans = 0

func check(y int) {
	a, b, c := false, false, false
	for i := y; i > 0; i /= 10 {
		z := i % 10
		if z == 3 {
			a = true
		} else if z == 5 {
			b = true
		} else if z == 7 {
			c = true
		}
	}
	if a && b && c {
		ans++
	}
	return
}

func rec(x int) {
	check(x)
	if x > n {
		return
	}
	if x*10+3 <= n {
		rec(x*10 + 3)
	}
	if x*10+5 <= n {
		rec(x*10 + 5)
	}
	if x*10+7 <= n {
		rec(x*10 + 7)
	}
	return
}

var n int

func main() {
	fmt.Scan(&n)
	rec(0)
	fmt.Println(ans)
}
