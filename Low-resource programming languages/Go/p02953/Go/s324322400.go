package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	N := nextInt()
	var n, before int
	l := make([]int, N)
	for i := 0; i < N; i++ {
		n = nextInt()
		if before >= n {
			l[i-1]--
		}
		l[i] = n
		before = n
	}

	for i := 1; i < N; i++ {
		if l[i-1] > l[i] {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}