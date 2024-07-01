package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var nextReader func() string

func newScanner() func() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 1024), int(1e11))
	sc.Split(bufio.ScanWords)
	return func() string {
		sc.Scan()
		return sc.Text()
	}
}

func nextString() string { return nextReader() }

func nextInt() int { n, _ := strconv.Atoi(nextReader()); return n }

func main() {
	nextReader = newScanner()
	A, B, C := nextInt(), nextInt(), nextInt()
	if A == B && B == C {
		fmt.Println("No")
		return
	}
	if A == B || A == C || B == C {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
