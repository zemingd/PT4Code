package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	if N == 0 || N == 1 {
		fmt.Println(0)
		return
	}

	ans := 0
	n := N

	var count, now int

	for i := 2; i*i <= N; i++ {
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
	if n != 1 {
		ans++
	}
	fmt.Println(ans)
}
