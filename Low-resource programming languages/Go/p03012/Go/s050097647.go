package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	sum := 0
	ws := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&ws[i])
		sum += ws[i]
	}

	ret := 0
	tmp := 0
	for i := 0; i < n; i++ {
		tmp += ws[i]
		if tmp >= (sum / 2) {
			calc1 := getAbs(tmp, sum-tmp)
			calc2 := getAbs(tmp-ws[i], sum-(tmp-ws[i]))
			if calc1 > calc2 {
				ret = calc2
			} else {
				ret = calc1
			}
			break
		}
	}

	fmt.Println(ret)
}

func getAbs(a, b int) int {
	tmp := a - b
	if tmp > 0 {
		return tmp
	} else {
		return -tmp
	}
}
