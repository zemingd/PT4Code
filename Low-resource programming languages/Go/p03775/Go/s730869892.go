package main

import (
	"fmt"
)

const inf = int64(1) << 60

func cal(n int64) (ret int64) {
	for n > 0 {
		ret++
		n /= 10
	}
	return ret
}

func main() {
	var n int64
	fmt.Scanf("%d\n", &n)
	ans := inf
	for i := int64(1); i*i < n; i++ {
		if n%i != 0 {
			continue
		}
		j := n / i
		m1, m2 := cal(i), cal(j)
		if m2 > m1 {
			m1 = m2
		}
		if m1 < ans {
			ans = m1
		}
	}
	fmt.Printf("%d", ans)
}
