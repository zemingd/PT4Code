package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	nextReader = newScanner()

	n := nextInt()
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt()
	}

	var cnt int
	for i := 1; i < n-1; i++ {
		if p[i] > p[i-1] && p[i] > p[i+1] {
			continue
		}
		if p[i] < p[i-1] && p[i] < p[i+1] {
			continue
		}
		cnt++
	}
	fmt.Println(cnt)
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

func nextInt() int { n, _ := strconv.Atoi(nextReader()); return n }
