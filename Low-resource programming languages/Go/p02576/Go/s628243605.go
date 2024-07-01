package main

import (
"fmt"
)

func main() {
	var n, x, t int
	fmt.Scan(&n, &x,&t)

	cnt := 0
	sum := 0
	for {
		cnt += t
		sum += x
		if n <=sum {
			break

		}

	}
	fmt.Println(cnt)
}
