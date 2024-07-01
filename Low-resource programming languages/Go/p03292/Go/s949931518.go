package main

import "fmt"

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	ans := 300
	// 愚直に全列挙
	arr := [][]int{{a, b, c}, {a, c, b}, {b, a, c}, {b, c, a}, {c, a, b}, {c, b, a}}
	for _, v := range arr {
		ans = min(ans, abs(v[0]-v[1])+abs(v[1]-v[2]))
	}
	fmt.Println(ans)
}
