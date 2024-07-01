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

func nextHop(loc int) {
	if loc >= N {
		return
	}
	if loc+1 < N {
		c := h[loc]
		c1 := h[loc+1]
		diff := Abs(c1 - c)
		if cost[loc+1] > cost[loc]+diff {
			cost[loc+1] = cost[loc] + diff
			nextHop(loc + 1)
		}
	}
	if loc+2 < N {
		c := h[loc]
		c2 := h[loc+2]
		diff := Abs(c2 - c)
		if cost[loc+2] > cost[loc]+diff {
			cost[loc+2] = cost[loc] + diff
			nextHop(loc + 2)
		}
	}
	return
}

var N int
var h []int
var cost []int

func main() {
	N = nextInt()
	h = nextInts(N)
	cost = make([]int, N)
	for i := 0; i < len(cost); i++ {
		cost[i] = 1<<31 - 1
	}
	cost[0] = 0
	nextHop(0)
	fmt.Println(cost[N-1])
	fmt.Println(cost)
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
