package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	nextReader = newScanner()
	k, n := nextInt(), nextInt()
	as := nextInts(n)
	sort.Ints(as)

	l := 0
	for i := 0; i < n; i++ {
		var d int
		if i == n-1 {
			d = k - as[i] + as[0]
		} else {
			d = as[i+1] - as[i]
		}
		if l < d {
			l = d
		}
	}
	fmt.Println(k - l)
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
