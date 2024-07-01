package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var x, y, a, b, c int
	fmt.Fscan(r, &x)
	fmt.Fscan(r, &y)
	fmt.Fscan(r, &a)
	fmt.Fscan(r, &b)
	fmt.Fscan(r, &c)
	as := make([]int, a)
	bs := make([]int, b)
	cs := make([]int, c)
	for i := 0; i < a; i++ {
		fmt.Fscan(r, &as[i])
	}
	for i := 0; i < b; i++ {
		fmt.Fscan(r, &bs[i])
	}
	for i := 0; i < c; i++ {
		fmt.Fscan(r, &cs[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(as)))
	sort.Sort(sort.Reverse(sort.IntSlice(bs)))

	var d []int
	for i := 0; i < x; i++ {
		d = append(d, as[i])
	}
	for i := 0; i < y; i++ {
		d = append(d, bs[i])
	}
	for i := 0; i < c; i++ {
		d = append(d, cs[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(d)))

	ans := 0
	for i := 0; i < x+y; i++ {
		ans += d[i]
	}
	fmt.Println(ans)
}
