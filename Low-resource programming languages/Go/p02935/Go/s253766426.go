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
	V := make(values, N)
	next := make([]int, N)

	for i := 0; i < N; i++ {
		V[i] = float64(nextInt())
		next[i] = 1
	}

	// vをソートして真ん中から使っていく
	sort.Sort(V)
	ans := 0.0

	for n := 0; n < N-1; n++ {
		mv := float64(9999)
		mi := -1

		// 負でない隣を探す
		for i := 0; i < N-1; i++ {
			if V[i] < 0 {
				continue
			}
			v := V[i+next[i]] - V[i]
			if v < mv {
				mv = v
				mi = i
			}
		}
		ans = (V[mi] + V[mi+next[mi]]) / 2
		V[mi] = ans
		V[mi+next[mi]] = -1
		next[mi]++
	}

	fmt.Println(ans)
}

type values []float64

func (a values) Len() int           { return len(a) }
func (a values) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a values) Less(i, j int) bool { return a[i] < a[j] }

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
