package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	used := make(map[int]bool)
	a := s
	used[a] = true
	for i := 2; ; i++ {
		a = f(a)
		if used[a] {
			fmt.Println(i)
			return
		}
		used[a] = true
	}
}

func f(n int) int {
	if n%2 == 0 {
		return n / 2
	}
	return 3*n + 1
}
