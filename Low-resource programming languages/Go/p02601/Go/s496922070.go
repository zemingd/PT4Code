package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	return sc
}

func main() {
	sc = initScanner(os.Stdin)
	if resolve(parseProblem()) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func parseProblem() (a, b, c, k int) {
	return scanInt(sc), scanInt(sc), scanInt(sc), scanInt(sc)
}

func resolve(a, b, c, k int) bool {
	state := []int{a, b, c}
	return dfs(state, k)
}

func dfs(state []int, k int) (success bool) {
	if state[0] < state[1] && state[1] < state[2] {
		return true
	}
	if k == 0 {
		return false
	}
	for i := 0; i < len(state); i++ {
		next := make([]int, len(state))
		copy(next, state)
		next[i] = state[i] * 2
		success := dfs(next, k-1)
		if success {
			return success
		}
	}
	return false
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
