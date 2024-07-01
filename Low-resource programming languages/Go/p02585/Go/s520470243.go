package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, K = ReadInt(), ReadInt()
	P := ReadInts(N)
	C = ReadInts(N)

	next = make([]int, N)
	for i := 0; i < N; i++ {
		P[i]--
		next[i] = P[i]
	}

	l = make([]int, N)
	for v := 0; v < N; v++ {
		if l[v] == 0 {
			calcL(0, v, make([]bool, N))
		}
	}

	score = make([][]int, N)
	for v := 0; v < N; v++ {
		score[v] = make([]int, l[v]+1)
	}

	ans := -1 << 60
	for v := 0; v < N; v++ {
		calcScore(0, v, v, 0)
		if K <= l[v] {
			for k := 1; k <= K; k++ {
				ans = Max(ans, score[v][k])
			}
			continue
		}
		if score[v][l[v]] <= 0 {
			for k := 1; k <= l[v]; k++ {
				ans = Max(ans, score[v][k])
			}
			continue
		}

		cycle := K/l[v] - 1
		cycleScore := cycle * score[v][l[v]]
		if cycle > 0 {
			ans = Max(ans, cycleScore)
		}
		for i := 0; i <= K-l[v]*cycle; i++ {
			k := l[v]*cycle + i
			if k == 0 {
				continue
			}
			if i <= l[v] {
				ans = Max(ans, cycleScore+score[v][i])
			} else {
				ans = Max(ans, cycleScore+score[v][l[v]]+score[v][i-l[v]])
			}
		}
	}
	fmt.Println(ans)
}

var N, K int
var C, next, l []int
var score [][]int

func calcL(depth int, visit int, seen []bool) int {
	if seen[visit] {
		l[visit] = depth
		return depth
	}
	seen[visit] = true
	l[visit] = calcL(depth+1, next[visit], seen)
	return l[visit]
}

func calcScore(depth int, start int, visit int, prefix int) {
	if depth > l[visit] {
		return
	}
	score[start][depth] = prefix
	calcScore(depth+1, start, next[visit], prefix+C[next[visit]])
}

func Max(xs ...int) int {
	max := xs[0]
	for _, x := range xs[1:] {
		if max < x {
			max = x
		}
	}
	return max
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
