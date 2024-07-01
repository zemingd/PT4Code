package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	N := nextInt()
	K := nextInt()

	p := make(prices, N)

	for i := 0; i < N; i++ {
		p[i] = nextInt()
	}
	sort.Sort(p)

	s := 0
	for i := 0; i < K; i++ {
		s += p[i]
	}

	fmt.Println(s)
}

type prices []int

func (a prices) Len() int           { return len(a) }
func (a prices) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a prices) Less(i, j int) bool { return a[i] < a[j] }

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}

func debug(args ...interface{}) {
	fmt.Fprintln(os.Stderr, args)
}
