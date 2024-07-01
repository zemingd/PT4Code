package main

import (
	"bufio"
	"fmt"
	"os"
)

func pow(x, n, m int64) int64 {
	if n == 0 {
		return 1
	}
	if n&1 == 0 {
		r := pow(x, n/2, m)
		return r * r % m
	}
	return x * pow(x, n-1, m) % m
}

func main() {
	r := bufio.NewReader(os.Stdin)

	m := int64(1e9) + 7
	var n int
	fmt.Fscan(r, &n)
	a := make([]int64, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &a[i])
	}

	var ans int64
	for i := 0; i < 60; i++ {
		var cnt int64
		for j := 0; j < n; j++ {
			if a[j]>>uint(i)&1 == 1 {
				cnt++
			}
		}
		cnt = cnt * (int64(n) - cnt) % m
		ans += pow(2, int64(i), m) * cnt % m
		ans %= m
	}
	fmt.Println(ans)
}
