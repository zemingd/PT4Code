package main

import (
	"fmt"
)

func main() {
	var A, B, C int
	fmt.Scan(&A, &B, &C) // ポインタ変数に整数値を入れる

	ans := C - (A - B)
	if ans < 0 {
		ans = 0
	}
	fmt.Println(ans)
}
