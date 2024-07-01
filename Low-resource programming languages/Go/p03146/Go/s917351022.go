// ProblemURL : https://atcoder.jp/contests/abc116/tasks/abc116_b
// ---------------------------------------------
package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)
	f := func(n int) int {
		if n%2 == 0 {
			return n / 2
		}
		return n*3 + 1
	}
	as := make([]int, 1000001)
	as[0] = s
	for i := 1; i < 1000000; i++ {
		as[i] = f(as[i-1])
	}
	mp := make(map[int]int, 1000001)
	ans := -1
	for i := range as {
		if _, exist := mp[as[i]]; exist {
			ans = i
			break
		}
		mp[as[i]]++
	}
	fmt.Println(ans + 1)
}
