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
	N, M := nextInt(), nextInt()
	H := nextInts(N)
	// グラフの初期化
	graph := make([][]int, N, N)
	g := make([]map[int]struct{}, N)
	for i := 0; i < N; i++ {
		graph[i] = make([]int, N)
		g[i] = make(map[int]struct{})
	}
	var A = make([]int, M)
	var B = make([]int, M)
	for i := 0; i < M; i++ {
		// 0オリジン
		A[i], B[i] = nextInt()-1, nextInt()-1
		// A[i], B[i]間に辺を張る
		graph[A[i]][B[i]] += 1
		graph[B[i]][A[i]] += 1
		if g[i][A[i]] == struct{}{} || g[i][B[i]] == struct{}{} {
			continue
		}
		g[i][A[i]] = struct{}{}
		g[i][B[i]] = struct{}{}
	}

	var ans int
	for i := 0; i < N; i++ {
		//for j := 0; j < N; j++ {
		for j := range g{
			if graph[i][j] == 1 {
				if H[j] >= H[i] {
					break
				}
			}
			if graph[i][j] == 2 {
				break
			}
			if j == N-1 {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
