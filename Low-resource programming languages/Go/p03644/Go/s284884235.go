package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	res, cnt := 1, 0
	for i := 1; i <= n; i++ {
		t, c := i, 0
		for t % 2 == 0 {
			t /= 2
			c += 1
		}
		if cnt < c {
			res = i
			cnt = c
		}
	}

	fmt.Println(res)
}
