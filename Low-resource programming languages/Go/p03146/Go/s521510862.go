package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)
	seen := map[int]bool{s: true}
	for i := 2; true; i++ {
		next := f(s)
		if seen[next] {
			fmt.Println(i)
			return
		}
		s, seen[next] = next, true
	}
}

func f(i int) int {
	if i&1 == 0 {
		return i >> 1
	}
	return 3*i + 1
}
