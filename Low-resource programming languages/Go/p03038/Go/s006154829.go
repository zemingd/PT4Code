package main

import (
	"fmt"
)

func main() {
	var n, m, num, b, c int
	max := 0
	fmt.Scan(&n, &m)
	cardNums := make([]int, 1000000010)
	for i := 0; i < n; i++ {
		fmt.Scan(&num)
		if max < num {
			max = num
		}
		cardNums[num] += 1
	}

	for i := 0; i < m; i++ {
		fmt.Scan(&b, &c)
		if max < c {
			max = c
		}
		cardNums[c] += b
	}

	sum := 0
	cardNum := 0
	for i := max; i > 0; i-- {
		if cardNums[i] == 0 {
			continue
		}
		sum += i * cardNums[i]
		cardNum += cardNums[i]
		if cardNum >= n {
			sum -= i * (cardNum - n)
			break
		}
	}

	fmt.Println(sum)
}
