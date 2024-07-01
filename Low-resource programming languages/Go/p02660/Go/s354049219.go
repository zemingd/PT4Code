package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ans := 0
	for i := 2; i < 1e7; i++ {
		j := i
		for n%j == 0 {
			ans++
			n /= j
			j *= i
		}
		for n%i == 0 {
			n /= i
		}
	}
	if n >= 1e7 {
		ans++
	}
	fmt.Println(ans)
}
