package main

import (
	"fmt"
)

func main() {
	var a, b, c, x int
	fmt.Scanf("%d", &a) //10
	fmt.Scanf("%d", &b) //2
	fmt.Scanf("%d", &c) //1
	fmt.Scanf("%d", &x)
	x /= 50
	cnt := 0
	for i := 0; i <= c; i++ {
		if x-i < 0 {
			break
		}
		for j := 0; j <= b; j++ {
			if x-i-j*2 < 0 {
				break
			}
			for k := 0; k <= a; k++ {
				res := x - i - j*2 - k*10
				if res < 0 {
					break
				}
				if res == 0 {
					cnt++
					break
				}
			}
		}
	}
	fmt.Printf("%d", cnt)
}
