package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func ini() {
	var buf = make([]byte, 10000)
	sc.Buffer(buf, 1000000)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	ini()
	N, _ := strconv.Atoi(nextLine())
	S := nextLine()
	b := make([]int, N+1)

	for i, s := range S {
		if s == '#' {
			b[i+1] = b[i] + 1
		} else {
			b[i+1] = b[i]
		}
	}
	ans := N
	for i := 1; i < N+1; i++ {
		ans = min(ans, b[i]+N-i-b[N]+b[i-1])
	}
	fmt.Println(ans)
}
