package main

import "fmt"

func main() {
	var n int
	var as []int
	var bs []int
	var cs []int
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		as = append(as, tmp)
	}
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		bs = append(bs, tmp)
	}
	for i := 0; i < n-1; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		cs = append(cs, tmp)
	}
	fmt.Println(exec(as, bs, cs))
}

func exec(as, bs, cs []int) int {
	var s int
	for i, a := range as {
		s += bs[a-1]
		if i < len(as)-1 && a+1 == as[i+1] {
			s += cs[a-1]
		}
	}
	return s
}