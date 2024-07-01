package main

import "fmt"

func main() {
	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	ans := (B - 1) / (A - 1)
	if (B-1)%(A-1) > 0 {
		ans++
	}
	fmt.Println(ans)
}
