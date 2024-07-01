package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	ans := -1000000000
	for i := 0; i <= k && i <= n; i++ {
		for j := 0; j <= k-i && j <= n-i; j++ {
			br := make([]int, 0, i+j)
			for k := 0; k < i; k++ {
				br = append(br, ar[k])
			}
			for k := 0; k < j; k++ {
				br = append(br, ar[n-1-k])
			}
			sort.Ints(br)
			sum := 0
			de := k - i - j
			for _, v := range br {
				if v >= 0 {
					sum += v
				} else {
					if de > 0 {
						de--
					} else {
						sum += v
					}
				}
			}
			if ans < sum {
				ans = sum
			}
		}
	}
	fmt.Println(ans)
}
