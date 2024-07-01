package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wtr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n,s := scanInt(),scanText()

	ans := 0
	for i := 0; i < n; i++ {
		sub := s[i:]
		ans = max(ans,z(sub))
	}
	fmt.Println(ans)
}

func z(s string) int {
	n := len(s)
	res := 0
	for i := 1; i < n; i++ {
		sub := s[i:]
		c := 0
		for j := 0; j < len(sub); j++ {
			if s[j] == sub[j] {
				c++
			} else {
				break
			}
		}
		res = max(res,min(c,i))
	}

	return res
}

func min(a,b int) int {
	if a<b {
		return a
	}
	return b
}

func max(a,b int) int {
	if a>b {
		return a
	}
	return b
}

