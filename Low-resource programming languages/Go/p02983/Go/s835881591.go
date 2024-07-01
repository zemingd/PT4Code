package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)

	c = b / 2019
	flg := 0
	ans := 100

	for i := 1; i <= c; i++ {
		if a <= 2019*i && 2019*i <= b {
			fmt.Println(0)
			flg = 1
			break
		}
	}

	if flg == 0 {
		for i := a; i < b; i++ {
			for j := a + 1; j <= b; j++ {
				if (i*j)%2019 < ans {
					ans = (i * j) % 2019
				}
			}
		}
		fmt.Println(ans)
	}
}
