package main

import "fmt"

func countDivisor(n int) (x int) {
	for i := 1; i <= n; i++ {
		if n%i == 0 {
			x++
		}
	}
	return x
}

func main() {
	var n int
	fmt.Scan(&n)
	var ans int
	for i := 1; i <= n; i = i + 2 {
		if countDivisor(i) == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}
