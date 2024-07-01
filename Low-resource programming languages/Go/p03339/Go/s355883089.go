package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const maxBuf = 200100

var buf []byte = make([]byte, maxBuf)
var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Buffer(buf, maxBuf)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	s := sc.Text()

	lnum := make([]int, n)
	rnum := make([]int, n)
	for i := 0; i < n; i++ {
		if s[i] == 'E' {
			rnum[i] = 1
		} else {
			lnum[i] = 1
		}
	}
	lsum := make([]int, n+1)
	rsum := make([]int, n+1)
	for i := 0; i < n; i++ {
		lsum[i+1] = lsum[i] + lnum[i]
		rsum[i+1] = rsum[i] + rnum[i]
	}

	ans := int(1e9)
	for i := 0; i < n; i++ {
		res := lsum[i] + (rsum[n] - rsum[i+1])
		if ans > res {
			ans = res
		}
	}
	fmt.Println(ans)
}
