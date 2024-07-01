package main

import "fmt"

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
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
	// タスク間の差の変化が最も少ないように並べると全体のコストが最小となる。
	// つまり Ax > Ay > Azとした場合、全体のコストは
	// (Ax - Ay) + (Ay - Az)となって、結果max(a,b,c)-min(a,b,c)となる。
	fmt.Println(max(a, max(b, c)) - min(a, min(b, c)))
}
