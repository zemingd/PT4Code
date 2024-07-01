package main

import "fmt"

var as []int

func main() {
	var s int
	fmt.Scan(&s)

	am := make(map[int]int)
	for i := 0; ; i++ {
		aa := a(s, i)
		as = append(as, aa)

		if _, ok := am[aa]; ok {
			break
		}
		am[aa] = i
	}

	fmt.Println(len(as))
}

func f(n int) int {
	if n%2 == 0 {
		return n / 2
	}
	return 3*n + 1
}

func a(s, i int) int {
	if i == 0 {
		return s
	}
	return f(a(s, i-1))
}
