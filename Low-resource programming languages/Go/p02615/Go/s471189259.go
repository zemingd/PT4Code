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

	A := make(conf, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt64()
	}
	sort.Sort(A)

	ans := int64(0)

	for i := 0; i < N-1; i++ {
		ans += A[(i+1)/2]
	}

	fmt.Println(ans)
}

type conf []int64

func (a conf) Len() int           { return len(a) }
func (a conf) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a conf) Less(i, j int) bool { return a[i] > a[j] }

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
