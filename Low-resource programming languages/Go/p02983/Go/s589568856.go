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
	mod := 2019
	left, _ := strconv.Atoi(input())
	right, _ := strconv.Atoi(input())

	right = min(right, left+mod-1)
	n := right - left + 1
	remList := make([]int, n)
	for i := left; i <= right; i++ {
		remList[i-left] = i % mod
	}

	ans := mod - 1
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			ans = min(ans, remList[i]*remList[j]%mod)
		}
	}

	fmt.Println(ans)
}
