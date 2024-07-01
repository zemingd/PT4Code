package main

import "fmt"

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var a, b, v, w, t int
	fmt.Scan(&a, &v, &b, &w, &t)
	if t*(v-w) >= abs(b-a) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
