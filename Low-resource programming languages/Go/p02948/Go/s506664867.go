package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

// Data :
type Data struct {
	day, pay int
}

// Datas :
type Datas []Data

func (p Datas) Len() int {
	return len(p)
}

func (p Datas) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Datas) Less(i, j int) bool {
	return p[i].day > p[j].day
}

var J Datas
var dp [][]int
var used [][]bool

func rec(idx, t, M int) int {
	if t == M || idx == len(J) {
		return 0
	}
	if used[idx][t] == true {
		return dp[idx][t]
	}
	r0 := 0
	if t+J[idx].day <= M {
		r0 = rec(idx+1, t+1, M) + J[idx].pay
	}
	r1 := rec(idx+1, t, M)
	ret := max(r0, r1)
	used[idx][t] = true
	dp[idx][t] = ret
	return ret
}

func main() {
	sc.Split(bufio.ScanWords)

	N, M := getInt(), getInt()

	J = make(Datas, N)
	for i := 0; i < N; i++ {
		a, b := getInt(), getInt()
		J[i] = Data{a, b}
	}

	sort.Sort(J)
	// out(M, J)

	dp = make([][]int, N)
	used = make([][]bool, N)
	for i := 0; i < N; i++ {
		dp[i] = make([]int, N)
		used[i] = make([]bool, N)
	}
	ans := rec(0, 0, M)
	out(ans)
}
