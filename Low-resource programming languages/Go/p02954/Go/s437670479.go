package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	S := next()
	memo := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		memo[i] = math.MinInt32
	}

	counts := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		dist := calcDist(memo, S, i)
		dir := 1
		if S[i] == 'L' {
			dir = -1
		}
		if Abs(dist)%2 == 0 {
			counts[i+dist]++
		} else {
			counts[i+dist+dir]++
		}
	}

	for i := 0; i < len(counts)-1; i++ {
		fmt.Printf("%d ", counts[i])
	}
	fmt.Printf("%d\n", counts[len(counts)-1])
}

// S[i]がループする位置までのプラス方向の距離
func calcDist(memo []int, S string, i int) int {
	if memo[i] != math.MinInt32 {
		return memo[i]
	}

	dir := 1
	if S[i] == 'L' {
		dir = -1
	}
	if S[i] != S[i+dir] {
		memo[i] = 0
		return memo[i]
	}
	memo[i] = dir + calcDist(memo, S, i+dir)
	return memo[i]
}

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer(make([]byte, 256), 1e9)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}
