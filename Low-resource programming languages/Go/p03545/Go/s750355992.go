package main

import (
	"fmt"
)

var ans = ""

func main() {
	var s string
	fmt.Scan(&s)
	ar := make([]int, 4)

	for i, v := range s {
		ar[i] = int(v - '0')
	}
	f(0, ar[0], s[0:1], ar)
	fmt.Println(ans)
}

func f(n, sum int, s string, ar []int) {
	if n == 3 {
		if sum == 7 {
			ans = s + "=7"
		}
		return
	}
	f(n+1, sum+ar[n+1], s+"+"+fmt.Sprintf("%d", ar[n+1]), ar)
	f(n+1, sum-ar[n+1], s+"-"+fmt.Sprintf("%d", ar[n+1]), ar)
}
