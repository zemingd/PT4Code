package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scanf("%d", &K)
	fmt.Scanf("%d %d", &A, &B)

	c := 0
	for i := A; i <= B; i++ {
		if i%K == 0 {
			c = 1
			fmt.Println("OK")
			break
		}
	}
	if c == 0 {
		fmt.Println("NG")
	}
}