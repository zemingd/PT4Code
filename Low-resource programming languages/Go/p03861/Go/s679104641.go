// なぜか3WA残る
// 0 4 1 だと4がほしいがA-1しちゃうと-1~4なので5になっちゃうのか

package main

import "fmt"

func main() {
	var A, B, X int
	fmt.Scan(&A, &B, &X)
	fmt.Println(B/X - max(0, (A-1))/X)
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
