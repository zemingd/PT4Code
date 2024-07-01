package main

import (
	"bufio"
	"fmt"
	"os"
)

var bw = bufio.NewWriter(os.Stdout)

func isOdd(n int) bool { return n%2 != 0 }

func printf(format string, a ...interface{}) { fmt.Fprintf(bw, format, a...) }

func main() {
	defer bw.Flush()
	var s string
	fmt.Scan(&s)
	n := len(s)
	ans := make([]int, n)
	ctR := 0
	for i := 0; i < n; i++ {
		if s[i] == 'R' {
			ctR++
		} else {
			ans[i-1] += (ctR + 1) / 2
			ans[i] += ctR / 2
			ctR = 0
		}
	}
	ctL := 0
	for i := n - 1; i >= 0; i-- {
		if s[i] == 'L' {
			ctL++
		} else {
			ans[i] += ctL / 2
			ans[i+1] += (ctL + 1) / 2
			ctL = 0
		}
	}
	for i := 0; i <= len(ans)-2; i++ {
		printf("%v ", ans[i])
	}
	printf("%v\n", ans[len(ans)-1])
}
