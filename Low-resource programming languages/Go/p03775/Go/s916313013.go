// 約数作るだけでは

package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	divs := enumDiv(N)
	ans := int(1e10)
	for _, a := range divs {
		b := N / a
		ans = min(ans, max(keta(a), keta(b)))
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func keta(x int) int {
	ret := 0
	for x > 0 {
		ret += 1
		x /= 10
	}
	return ret
}

func enumDiv(x int) (ret []int) {
	ret = []int{}
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			ret = append(ret, i)
			if i != 1 && i*i != x {
				ret = append(ret, x/i)
			}
		}
	}
	return
}
