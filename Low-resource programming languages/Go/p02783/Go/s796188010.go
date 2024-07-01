package main

import "fmt"

func main() {
	var H, A int
	fmt.Scanf("%d", &H)
	fmt.Scanf("%d", &A)
	if H%A == 0 {
		fmt.Println(H / A)
	} else {
		var ans int
		ans = H / A
		fmt.Println(ans + 1)
	}
}
