package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	for i := 1; i <= n; i++ {
		ans := f(i)
		fmt.Println(ans)
	}
}

func f(n int) int {
	cnt := 0
	for x := 1; x*x <= n; x++ {
		for y := 1; y*y <= n; y++ {
			for z := 1; z*z <= n; z++ {
				a := x*x + y*y + z*z + x*y + y*z + z*x
				if a == n {
					cnt++
				}
			}
		}
	}
	return cnt
}
