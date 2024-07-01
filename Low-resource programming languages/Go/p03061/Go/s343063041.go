package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func strToInts(s string) []int {
	var ints []int
	for _, str := range strings.Split(s, " ") {
		i, _ := strconv.Atoi(str)
		ints = append(ints, i)
	}
	return ints
}

func gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	if b == 0 {
		return a
	}
	r := a % b
	for r != 0 {
		a, b = b, r
		r = a % b
	}
	return b
}

func reverse(is []int) []int {
	var res []int
	for i := len(is) - 1; i >= 0; i-- {
		res = append(res, is[i])
	}
	return res
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)

	as := strToInts(readLine(sc))

	var ls []int
	ls = append(ls, 0)
	for i, a := range as {
		ls = append(ls, gcd(ls[i], a))
	}

	var rs []int
	rs = append(rs, 0)
	for i, a := range reverse(as) {
		rs = append(rs, gcd(rs[i], a))
	}
	rs = reverse(rs)

	var res int
	for i := 0; i < n; i++ {
		res = max(res, gcd(ls[i], rs[i+1]))
	}
	fmt.Println(res)
}
