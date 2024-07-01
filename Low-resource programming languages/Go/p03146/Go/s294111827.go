package main

import "fmt"

func f(n int) int {
	if n%2 == 0 {
		return n / 2
	}
	return 3*n + 1
}

func main() {
	var s int
	fmt.Scan(&s)
	memo := make([]bool, 10000000)
	i := 1
	for {
		if memo[s] {
			break
		}
		memo[s] = true
		i++
		s = f(s)
	}
	fmt.Println(i)
}
