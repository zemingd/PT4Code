package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	fmt.Printf("%d¥n", find(n))
}

func find(n int) int {
	var num int
	for i := 1; i <= n; i++ {
		if i%2 == 1 && divisorNumIs(i, 8) {
			num++
		}
	}
	return num
}

func divisorNumIs(n, divisor int) bool {
	life := divisor - 2
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			if n/i == i {
				life--
			} else {
				life -= 2
			}
		}
		if life < 0 {
			break
		}
	}
	return life == 0
}
