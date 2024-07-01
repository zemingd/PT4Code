package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	x, _ := strconv.Atoi(Scanner())
	y, _ := strconv.Atoi(Scanner())
	a, _ := strconv.Atoi(Scanner())
	b, _ := strconv.Atoi(Scanner())
	c, _ := strconv.Atoi(Scanner())
	as := make([]int, a)
	bs := make([]int, b)
	cs := make([]int, c)
	for i := 0; i < a; i++ {
		as[i], _ = strconv.Atoi(Scanner())
	}
	for i := 0; i < b; i++ {
		bs[i], _ = strconv.Atoi(Scanner())
	}
	for i := 0; i < c; i++ {
		cs[i], _ = strconv.Atoi(Scanner())
	}
	sort.Sort(sort.Reverse(sort.IntSlice(as)))
	sort.Sort(sort.Reverse(sort.IntSlice(bs)))
	sort.Sort(sort.Reverse(sort.IntSlice(cs)))
	l := make([]int, 0)
	for i := 0; i < x; i++ {
		l = append(l, as[i])
	}
	for i := 0; i < y; i++ {
		l = append(l, bs[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(l)))
	m := l[larger(len(l)-c, 0):]
	j := 0
	for i := 0; i < len(m); i++ {
		if m[i] < cs[j] {
			m[i] = cs[j]
			j++
		}
	}
	ans := 0
	for i := 0; i < len(l); i++ {
		ans += l[i]
	}
	fmt.Println(ans)
}
func larger(x, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}
func smaller(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}
