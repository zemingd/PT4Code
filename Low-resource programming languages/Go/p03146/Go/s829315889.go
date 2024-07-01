package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	l := make(map[int]int, 1000000)
	ans := 0
	for a := s; ; a = f(a) {
		ans++
		if _, ok := l[a]; ok {
			break
		}
		l[a]++
	}
	fmt.Println(ans)
}

func f(n int) int {
	if n%2 == 1 {
		return 3*n + 1
	}
	return n / 2
}
