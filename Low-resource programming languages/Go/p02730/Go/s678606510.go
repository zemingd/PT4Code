package main

import (
	"bufio"
	"fmt"
	"os"
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
	s := Scanner()
	n := len(s)
	ans := true
	for i := 0; i < n; i++ {
		if s[i] != s[n-i-1] {
			ans = false
		}
	}
	h1 := (n - 1) / 2
	h2 := (n+3)/2 - 1
	for i := 0; i < h1; i++ {
		if s[i] != s[h1-i-1] {
			ans = false
		}
	}
	for i := 0; i < n-h2; i++ {
		if s[i+h2] != s[n-i-1] {
			ans = false
		}
	}
	if ans {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
