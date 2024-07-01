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
		flag[ss[i]-1] = true
		digits[ss[i]-1] = cs[i]
	}

	if !flag[0]  {
		if N == 1 {
			ans = 0
			fmt.Printf("%d\n", ans)
			return
		}
		ans = -1
		fmt.Printf("%d\n", ans)
		return
	}
	if N == 1 {
		ans = digits[0]
		fmt.Printf("%d\n", ans)
		return
	}
	if N == 2 {
		ans = 10*digits[0] + 1*digits[1]
		fmt.Printf("%d\n", ans)
		return
	}
	if N == 3 {
		ans = 100*digits[0] + 10*digits[1] + digits[2]
		fmt.Printf("%d\n", ans)
		return
	}


}
