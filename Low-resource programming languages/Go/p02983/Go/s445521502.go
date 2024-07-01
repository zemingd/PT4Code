package main

import (
	"fmt"
)

func main() {
	var l, r int
	fmt.Scan(&l, &r)
	var ans, temp int
	if r-l <= 2019 {
		ans = 2018
		for i := 0; i <= r-l; i++ {
			for j := 0; j <= r-l; j++ {
				if i < j {
					temp = (l + i) * (l + j) % 2019
					if temp < ans {
						ans = temp
					}
				}
			}
		}
	}
	fmt.Println(ans)
}