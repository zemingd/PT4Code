package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	if n == 0 || n == 1 {
		fmt.Println(0)
		return
	}

	ans := 0

	var count, now int

	for i := 2; i <= n; i++ {
		count = 1
		now = count
		for n%i == 0 {
			n /= i
			count -= 1
			if count == 0 {
				now += 1
				count = now
				ans += 1
				continue
			}
		}
	}
	if ans == 0 {
		ans = 1
	}
	fmt.Println(ans)
}
