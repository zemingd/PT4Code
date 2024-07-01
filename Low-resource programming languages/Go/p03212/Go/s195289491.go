package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var n int

func Pow10(n int) int {
	return int(math.Pow10(n))
}

func f(base, digit int) []int {
	var ret []int
	if v := base + Pow10(digit)*3; v <= n {
		ret = append(ret, v)
		ret = append(ret, f(v, digit+1)...)
	}
	if v := base + Pow10(digit)*5; v <= n {
		ret = append(ret, v)
		ret = append(ret, f(v, digit+1)...)
	}
	if v := base + Pow10(digit)*7; v <= n {
		ret = append(ret, v)
		ret = append(ret, f(v, digit+1)...)
	}
	return ret
}

func check(n int, m map[int]bool) bool {
	m[n%10] = true
	if m[3] && m[5] && m[7] {
		return true
	}
	if n/10 == 0 {
		return false
	}
	return check(n/10, m)
}

func main() {
	var scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	txt := scanner.Text()
	n, _ = strconv.Atoi(txt)

	cnt := 0
	for _, x := range f(0, 0) {
		if check(x, map[int]bool{}) {
			cnt++
		}
	}
	fmt.Println(cnt)
}
