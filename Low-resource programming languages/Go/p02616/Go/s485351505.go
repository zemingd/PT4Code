package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var n, k int
	const M int64 = int64(1e9) + 7
	fmt.Fscan(r, &n, &k)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &a[i])
	}

	var nn int
	for i := 0; i < n; i++ {
		if a[i] < 0 {
			nn++
		}
	}

	var b []int
	if n == k {
		b = a
	} else if nn == n && k&1 == 1 {
		// negative
		sort.Sort(sort.Reverse(sort.IntSlice(a)))
		b = a[:k]
	} else {
		// positive or zero
		sort.Sort(sort.Reverse(sort.IntSlice(a)))
		l, r := 0, n-1
		check := func() bool {
			if l == r {
				return false
			}
			return int64(a[l])*int64(a[l+1]) < int64(a[r])*int64(a[r-1])
		}

		for len(b) < k {
			if len(b) <= k-2 && check() {
				b = append(b, a[r], a[r-1])
				r -= 2
			} else {
				b = append(b, a[l])
				l++
			}
		}
	}

	var ans int64 = 1
	for i := 0; i < len(b); i++ {
		ans *= int64(b[i])
		ans %= M
	}
	ans += M
	ans %= M
	fmt.Println(ans)

}
