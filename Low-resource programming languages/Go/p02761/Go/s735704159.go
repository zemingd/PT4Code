package main

import "fmt"

func main() {
	var (
		N, M int
	)
	fmt.Scan(&N, &M)

	var (
		s, c   int
		ss, cs []int
	)
	for i := 0; i < M; i++ {
		fmt.Scan(&s, &c)
		ss = append(ss, s)
		cs = append(cs, c)
	}

	var ans int
	var digits [3]int
	var flag [3]bool

	for i := 0; i < M; i++ {
		if flag[ss[i]-1] && cs[i] != digits[ss[i]-1] {
			ans = -1
			fmt.Printf("%d\n", ans)
			return
		}
		digits[ss[i]-1] = cs[i]
	}

	if digits[0] != 0 {
		ans = 100*digits[0] + 10*digits[1] + digits[2]
	} else {
		ans = -1
	}

	fmt.Printf("%d\n", ans)
}
