package main

import (
	"fmt"
)

func cal(n int) int {
	if n%2 == 0 {
		n /= 2
	} else {
		n = n*3 + 1
	}
	return n
}

func main() {
	var first, num, ans int

	fmt.Scan(&first)
	sequence := make([]int, 1000000)
	exsits := make(map[int]bool, 1000000)

	sequence[0] = first
	exsits[first] = true

	for i := 1; ; i++ {
		num = cal(sequence[i-1])

		if exsits[num] {
			ans = i + 1
			break
		}
		sequence[i] = num
		exsits[num] = true
	}

	fmt.Println(ans)
}
