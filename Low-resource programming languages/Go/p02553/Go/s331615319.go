package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)
	ans := a * c
	tmp := a * d
	if tmp > ans {
		ans = tmp
	}
	tmp = b * c
	if tmp > ans {
		ans = tmp
	}
	tmp = b * d
	if tmp > ans {
		ans = tmp
	}
	if a >= 0 && 0 >= b {
		tmp = 0
		if tmp > ans {
			ans = tmp
		}
	}
	if d >= 0 && 0 >= c {
		tmp = 0
		if tmp > ans {
			ans = tmp
		}
	}
	fmt.Println(ans)
}
