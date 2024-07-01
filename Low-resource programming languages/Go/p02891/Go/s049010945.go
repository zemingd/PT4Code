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

func solve(s string, k int) int {
	n := len(s)
	if n == 1 {
		return n * k / 2
	}

	numPer1 := 0
	seqNum := 1
	for i := 1; i < n; i++ {
		if s[i] == s[i-1] {
			seqNum++
		} else {
			numPer1 += seqNum / 2
			seqNum = 1
		}
	}
	lastSeqNum := seqNum

	if s[0] != s[n-1] {
		numPer1 += lastSeqNum / 2
		return numPer1 * k
	}
	if lastSeqNum == n {
		return n * k / 2
	}

	firstSeqNum := 1
	for i := 1; i < n; i++ {
		if s[i] != s[i-1] {
			break
		}
		firstSeqNum++
	}

	ans := numPer1
	numPer1 -= firstSeqNum / 2
	numPer1 += (firstSeqNum + lastSeqNum) / 2
	ans += numPer1 * (k - 1)
	ans += lastSeqNum / 2

	return ans
}

func main() {
	s := input()
	k, _ := strconv.Atoi(input())
	fmt.Println(solve(s, k))
}
