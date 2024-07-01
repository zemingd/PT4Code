package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 1000000)

	s := getString()

	N := len(s)
	n := (N - 1) / 2

	ans := true
	//	out(s[:n], n)
	for i := 0; i < n; i++ {
		//		out(string(s[i]), string(s[n-i-1]))
		if s[i] != s[n-i-1] {
			ans = false
		}
	}
	//	out(ans)
	n = (N+3)/2 - 1
	//	out(s[n:], n, N)
	j := N - 1
	for i := n; i < N; i++ {
		//		out(string(s[i]), string(s[j]))
		if s[i] != s[j] {
			ans = false
		}
		j--
	}

	if ans == true {
		out("Yes")
	} else {
		out("No")
	}
}
