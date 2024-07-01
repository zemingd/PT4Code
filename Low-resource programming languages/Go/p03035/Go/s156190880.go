package main

import "fmt"

func main() {
	var A, B, ans int
	fmt.Scan(&A, &B)
	if A <= 5 {
		ans = 0
	} else if 6 <= A && A <= 12 {
		ans = B / 2
	} else {
		ans = B
	}
	fmt.Println(ans)
}
