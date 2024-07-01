package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	nextReader = newScanner()
	h, n := nextInt(), nextInt()
	as := nextInts(n)
	for _, a := range as {
		h -= a
	}
	if h <= 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

// ---------------------------------------------------------------
// I/O
// ---------------------------------------------------------------
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

func nextInts(size int) []int {
	ns := make([]int, size)
	for i := 0; i < size; i++ {
		ns[i] = nextInt()
	}
	return ns
}
