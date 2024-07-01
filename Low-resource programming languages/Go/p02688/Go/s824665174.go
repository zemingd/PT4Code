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

func nextInts(size int) []int {
	ns := make([]int, size)
	for i := 0; i < size; i++ {
		ns[i] = nextInt()
	}
	return ns
}

func init() {
	nextReader = newScanner()
}

func main() {
	N, K := nextInt(), nextInt()
	var A = make([]int, N)
	for i := 0; i < K; i++ {
		d := nextInt()
		for j := 0; j < d; j++ {
			A[nextInt()-1] += 1
		}
	}
	var ans int
	for i := 0; i < N; i++ {
		if A[i] == 0 {
			ans++
		}
	}
	fmt.Println(ans)
}

