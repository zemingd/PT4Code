package main

import "fmt"

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)

	ss := s
	if k > 1 {
		ss += s
	}

	ans := 0
	for i := 1; i < len(ss); i++ {
		if ss[i-1] == ss[i] {
			ans++
			i++
		}
	}

	if len(s) == 1 {
		ans = k / 2
	} else if ans%2 == 0 {
		ans = ans / 2 * k
	} else {
		ans = ans/2*k + (k - 1)
	}

	fmt.Println(ans)
}
