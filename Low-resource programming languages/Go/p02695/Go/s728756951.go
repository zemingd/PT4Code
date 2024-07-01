package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	M := nextInt()
	Q := nextInt()

	a := make([]int, Q)
	b := make([]int, Q)
	c := make([]int, Q)
	d := make([]int, Q)

	for i := 0; i < Q; i++ {
		a[i] = nextInt() - 1
		b[i] = nextInt() - 1
		c[i] = nextInt()
		d[i] = nextInt()
	}
	candidates := make([][]int, 0)
	queue := make([]q, 0)
	queue = append(queue, q{0, []int{}})

	for len(queue) > 0 {
		item := queue[0]
		queue = queue[1:]

		if item.n > M {
			continue
		}
		if len(item.arr) == N {
			candidates = append(candidates, item.arr)
			continue
		}

		q1 := q{item.n + 1, copy(item.arr)}
		q1.arr = append(q1.arr, item.n+1)
		queue = append(queue, q1)

		q2 := q{item.n + 1, copy(item.arr)}
		queue = append(queue, q2)
	}

	ans := 0

	for j := 0; j < len(candidates); j++ {
		A := candidates[j]
		s := 0
		for i := 0; i < Q; i++ {
			if A[b[i]]-A[a[i]] == c[i] {
				s += d[i]
			}
		}
		ans = max(ans, s)
	}

	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

type q struct {
	n   int
	arr []int
}

func copy(f []int) []int {
	t := make([]int, len(f))

	for i := 0; i < len(f); i++ {
		t[i] = f[i]
	}

	return t
}

func printarr(arr []int) {
	for i := 0; i < len(arr); i++ {
		print(arr[i], ",")
	}
	println()
}

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
