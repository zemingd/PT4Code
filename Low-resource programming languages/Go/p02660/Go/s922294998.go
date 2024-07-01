package main

import (
	"fmt"
)

func main() {
	var n int64
	fmt.Scan(&n)

	var sqn int
	for sqn = 1; int64(sqn)*int64(sqn) < n; sqn++ {
	}

	isnotPrime := make([]bool, sqn+1)
	ans := 0

OUTER:
	for i := 2; i <= sqn; i++ {
		if isnotPrime[i] {
			continue OUTER
		}
		for j := 2; i*j <= sqn; j++ {
			isnotPrime[i*j] = true
		}
		mul := int64(i)
		for {
			if n%mul == 0 {
				ans++
				n /= mul
				mul *= int64(i)
			} else {
				break
			}
		}
	}
	if n != 1 && n > int64(sqn) {
		fmt.Println(ans + 1)
		return
	}
	fmt.Println(ans)
	return
}
