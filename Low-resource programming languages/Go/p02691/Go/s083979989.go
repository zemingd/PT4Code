package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		as[i] = intScanner()
	}
	p := make([]int, n)
	m := make([]int, n)
	for i := 0; i < n; i++ {
		if i+as[i] < n {
			p[i+as[i]]++
		}
		if i-as[i] >= 0 {
			m[i-as[i]]++
		}
	}
	ans := 0
	for i := 0; i < n; i++ {
		ans += p[i] * m[i]
	}
	fmt.Println(ans)
}
