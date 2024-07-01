package main

import (
	"fmt"
)

func main() {
	// なぜかWAなる
	// var A, B, C float64
	// fmt.Scan(&A, &B, &C)
	// if C-A-B > 0 && 4*A*B < math.Pow(C-A-B, 2) {
	// 	fmt.Println("Yes")
	// } else {
	// 	fmt.Println("No")
	// }
	// なぜか通る
	var A, B, C int
	fmt.Scan(&A, &B, &C)
	if C-A-B > 0 && 4*A*B < (C-A-B)*(C-A-B) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
