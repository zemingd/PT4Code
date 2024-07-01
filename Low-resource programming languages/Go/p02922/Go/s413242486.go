package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	ans := exec(A, B)
	fmt.Println(ans)
}

func exec(A, B int) int {
	// 現在の差し込み口の数
	now := 1
	// Aプラグの数
	count := 0

	for {
		if B <= now {
			return count
		}

		count++
		now = now - 1 + A
	}

}
