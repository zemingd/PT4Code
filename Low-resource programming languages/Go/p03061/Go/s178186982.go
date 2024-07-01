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

func toInts(str string) []int64 {
	var res []int64
	for _, s := range strings.Split(str, " ") {
		i, _ := strconv.ParseInt(s, 10, 64)
		res = append(res, i)
	}
	return res
}

func gcd(a, b int64) int64 {
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

func gcds(as []int64) int64 {
	if len(as) == 0 {
		return 0
	}
	if len(as) == 1 {
		return as[0]
	}
	res := as[0]
	for _, i := range as[1:] {
		res = gcd(res, i)
	}
	return res
}

func max(a, b int64) int64 {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	as := toInts(readLine(sc))

	res := int64(0)
	for i := 0; i < n-1; i++ {
		r := gcd(gcds(as[0:i]), gcds(as[i+1:]))
		res = max(res, r)
	}

	fmt.Println(res)
}
