package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Query struct {
	p int
	q int
}

var N int
var M int
var Q int
var train [][]int
var query []Query
var dp [][]int

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N = nextInt()
	M = nextInt()
	Q = nextInt()

	train = make([][]int, N+1)
	dp = make([][]int, N+1)
	for i := 0; i < N+1; i++ {
		train[i] = make([]int, N+1)
		dp[i] = make([]int, N+1)
		for j := 0; j < N+1; j++ {
			train[i][j] = 0
			dp[i][j] = -1
		}
	}
	for i := 0; i < M; i++ {
		L := nextInt()
		R := nextInt()
		train[L][R]++
	}
	query = make([]Query, Q)
	for i := 0; i < Q; i++ {
		query[i] = Query{
			p: nextInt(),
			q: nextInt(),
		}
	}

	for i := 0; i < Q; i++ {
		ans := query[i].run()
		fmt.Println(ans)
	}
}

// queryを実行し、p,qに含まれる区間のtrainの数を返す
func (qu Query) run() int {
	return subQuery(qu.q, qu.q) - subQuery(qu.q, qu.p-1) - subQuery(qu.p-1, qu.q) + subQuery(qu.p-1, qu.p-1)
}

// Lがl以下、Rがr以下の個数を返す
func subQuery(l int, r int) int {
	if l == 0 || r == 0 {
		return 0
	}
	if dp[l][r] != -1 {
		return dp[l][r]
	}
	ans := subQuery(l-1, r) + subQuery(l, r-1) - subQuery(l-1, r-1) + train[l][r]
	dp[l][r] = ans
	return ans
}
