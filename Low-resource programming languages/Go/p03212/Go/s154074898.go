package main

import "fmt"

var max int
var ans int

func check753(n int) bool {
	seven := false
	five := false
	three := false
	for i := n; i > 0; i /= 10 {
		k := i % 10
		if k == 3 {
			three = true
		}
		if k == 5 {
			five = true
		}
		if k == 7 {
			seven = true
		}
	}
	return seven && five && three
}

func find(n int) {
	if n > max {
		return
	}
	if check753(n) {
		ans++
	}
	for i := 3; i <= 7; i += 2 {
		find(n*10 + i)
	}
}

func main() {
	ans = 0
	fmt.Scanf("%d", &max)
	find(0)
	fmt.Println(ans)
}
