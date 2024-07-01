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
			fmt.Println("yes")
			flg = 1
			break
		}
	}

	if flg == 0 {
		for l := a; l < b; l++ {
			for r := a + 1; r <= b; r++ {
				if (l*r)%2019 < ans {
					ans = (l * r) % 2019
					//fmt.Printf("ans:%d,l:%d,r:%d\n", ans, l, r)
					if ans == 0 {
						//fmt.Println("0あるで")
						//fmt.Printf("ans:%d,l:%d,r:%d\n", ans, l, r)
						ans = 0
						break
					}
				}
			}
		}
		fmt.Println(ans)
	}
}
