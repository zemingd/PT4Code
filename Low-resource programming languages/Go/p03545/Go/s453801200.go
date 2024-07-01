package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	a := make([]int, 4)
	for i := 0; i < 4; i++ {
		n, err := strconv.Atoi(string(s[i]))
		if err != nil {
			panic(err)
		}
		a[i] = n
	}
	fmt.Println(solve(a))
}

func solve(a []int) string {
	n := 4
	for bit := 0; bit < 1<<uint(n); bit++ {
		ans := a[0]
		f := fmt.Sprintf("%d", a[0])
		for i := uint(1); i < uint(n); i++ {
			if (bit & (1 << i)) > 0 { // bitのi番目に1が立っているか？
				ans += a[i]
				f += fmt.Sprintf("+%d", a[i])
			} else {
				ans -= a[i]
				f += fmt.Sprintf("-%d", a[i])
			}
		}
		if ans == 7 {
			return fmt.Sprintf("%s=%d", f, ans)
		}
	}
	return ""
}
