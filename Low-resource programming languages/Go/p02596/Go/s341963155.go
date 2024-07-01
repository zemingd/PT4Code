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

func solve(k int) int {
	n := 7
	for i := 1; i <= k; i++ {
		n %= k
		if n == 0 {
			return i
		}
		n = 10*n + 7
	}
	return -1
}

func main() {
	k, _ := strconv.Atoi(input())
	fmt.Println(solve(k))
}
