package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	as := make([]int, n)
	bs := make([]int, n)
	cs := make([]int, n-1)
	for i, _ := range as {
		fmt.Scan(&as[i])
	}
	for i, _ := range bs {
		fmt.Scan(&bs[i])
	}
	for i, _ := range cs {
		fmt.Scan(&cs[i])
	}

	cnt := 0
	tmp := 0
	for i, a := range as {
		cnt = cnt + bs[a-1]

		if tmp+1 == a && tmp != 0 {
			cnt = cnt + cs[tmp-1]
		}

		tmp = a
	}

	fmt.Print(cnt)
}
