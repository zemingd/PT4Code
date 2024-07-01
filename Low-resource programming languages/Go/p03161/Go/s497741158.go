package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func dummy() {
	math.Abs(1.0)
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	res, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return res
}
func nextIntSlice(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = nextInt()
	}
	return res
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
func nextStrSlice(n int) []string {
	res := make([]string, n)
	for i := 0; i < n; i++ {
		res[i] = nextStr()
	}
	return res
}

func mod(val int, m int) int {
	res := val % m
	if res < 0 {
		res += m
	}
	return res
}

func absInt(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func minInt(val ...int) int {
	res := val[0]
	for i := 1; i < len(val); i++ {
		if res > val[i] {
			res = val[i]
		}
	}
	return res
}
func maxInt(val ...int) int {
	res := val[0]
	for i := 1; i < len(val); i++ {
		if res > val[i] {
			res = val[i]
		}
	}
	return res
}

const MOD = 1000000007

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	h := nextIntSlice(n)
	dp := make([]int, n)
	dp[0] = 0
	for i := 0; i < n-1; i++ {
		mincost := 1000
		for j := 1; j <= minInt(k, i+1); j++ {
			cost := dp[i-j+1] + absInt(h[i+1]-h[i-j+1])
			if mincost > cost {
				mincost = cost
			}
		}
		dp[i+1] = mincost
	}
	fmt.Println(dp[n-1])
}
