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

func f(H int) int {
	if H > 1 {
		return 2*f(H/2) + 1
	}
	return 1
}

func main() {
	nextReader = newScanner()
	H := nextInt()
	fmt.Println(f(H))
}