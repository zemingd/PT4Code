package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	s := make([]int, M)
	c := make([]int, M)
	for i := range s {
		fmt.Scan(&s[i])
		s[i]--
		fmt.Scan(&c[i])
	}
	// fmt.Println("N", N, "M", M, "s", s, "c", c)
	var nmin, nmax int
	if N == 1 {
		nmin, nmax = 0, 9
	} else if N == 2 {
		nmin, nmax = 10, 99
	} else {
		nmin, nmax = 100, 999
	}
	ans := -1
	for i := nmin; i <= nmax; i++ {
		nstr := strconv.Itoa(i)
		// fmt.Printf("%d - %s\n", i, nstr)
		ok := true
		for j := 0; j < M; j++ {
			if s[j] < len(nstr) && nstr[s[j]] == '0'+byte(c[j]) {
				continue
			} else {
				ok = false
			}
		}
		if ok && ans == -1 {
			ans = i
		}
	}
	fmt.Println(ans)
}
