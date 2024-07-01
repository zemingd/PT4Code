// 桁DP典型 と思ったら753以外出てこない、だった
package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	stack := []int{0}
	ans := 0
	for len(stack) > 0 {
		var pop int
		stack, pop = stack[:len(stack)-1], stack[len(stack)-1]
		for _, a := range []int{3, 5, 7} {
			nex := pop*10 + a
			if nex > N {
				continue
			}
			if check(nex) {
				ans++
			}
			stack = append(stack, nex)
		}
	}
	fmt.Println(ans)
}

func check(n int) bool {
	flag3, flag5, flag7 := false, false, false
	for n > 0 {
		switch n % 10 {
		case 3:
			flag3 = true
		case 5:
			flag5 = true
		case 7:
			flag7 = true
		}
		n /= 10
	}
	if flag3 && flag5 && flag7 {
		return true
	}
	return false
}
