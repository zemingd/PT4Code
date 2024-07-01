package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)
	fmt.Println(col(s))
}

func col(s int) int {
	num := make([]int, 1000000)
	var next, ans int
	num[0] = s
	for i := 1; i < 1000000; i++ {
		if s%2 == 0 {
			next = s / 2
		} else {
			next = 3*s + 1
		}
		for _, v := range num {
			if next == v {
				ans = i + 1
			}
		}
		if ans != 0 {
			break
		}
		num[i] = next
		s = next
	}
	return ans
}
