package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	n, _ := strconv.Atoi(input())
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i], _ = strconv.Atoi(input())
	}

	ans := 0
	minv := p[0]
	for i := 0; i < n; i++ {
		if p[i] <= minv {
			ans++
		}
		minv = min(minv, p[i])
	}
	fmt.Println(ans)
}
