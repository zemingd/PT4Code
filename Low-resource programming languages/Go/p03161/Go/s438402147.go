package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var foothold []string

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func updateCost(loc int) {
	if loc == 0 {
		return
	}
	for i := 1; i <= Min(K, loc); i++ {
		cost[loc] = Min(cost[loc], cost[loc-i]+Abs(h[loc]-h[loc-i]))
	}
	return
}

var N int
var K int
var h []int
var cost []int

func main() {
	N = nextInt()
	K = nextInt()
	h = nextInts(N)
	cost = make([]int, N)
	for i := 0; i < len(cost); i++ {
		cost[i] = 1<<31 - 1
	}
	cost[0] = 0
	for i := 0; i < N; i++ {
		updateCost(i)
	}
	fmt.Println(cost[N-1])
}

func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}

func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}

var nextReader func() string

func init() {
	nextReader = NewScanner()
}

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func Min(a int, b int) int {
	if a > b {
		return b
	}
	return a
}

func Abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}
