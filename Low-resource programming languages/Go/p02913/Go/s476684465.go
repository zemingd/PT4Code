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
		lcp := z(s[i:])
		for j := 0; j < len(lcp); j++ {
			ans = max(ans, min(lcp[j],j))
		}
	}
	fmt.Println(ans)
}

func z(s string) []int {
	n := len(s)
	res := make([]int, n)
	i, j := 1, 0
	for i<n {
		for i+j < n && s[j] == s[i+j] {
			j++
		}
		res[i] = j
		if j == 0 {
			i++
			continue
		}
		k := 1
		for i+k < n && k+res[k] < j {
			res[i+k] = res[k]
			k++
		}
			i += k
			j -= k
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

