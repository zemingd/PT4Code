package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

const INF = 10000000

func init() {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	return sc.Text()
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func uniqIntSlice(a []int) []int {
	m := make(map[int]struct{})
	for _, v := range a {
		m[v] = struct{}{}
	}
	u := []int{}
	for k := range m {
		u = append(u, k)
	}
	return u
}
func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

//a:old b:new a>b -> a=b (update) more small
func chmin(a *int, b int) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

//a:old b:new a<b -> a=b (update) more large
func chmax(a *int, b int) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}

func rec(dp, h []int, i int) int {
	if dp[i] < INF {
		return dp[i]
	}
	if i == 0 {
		return 0
	}
	res := INF
	chmin(&res, rec(dp, h, i-1)+abs(h[i]-h[i-1]))
	if i > 1 {
		chmin(&res, rec(dp, h, i-2)+abs(h[i]-h[i-2]))
	}
	dp[i] = res
	return dp[i]
}

func main() {
	n := nextInt()
	k := nextInt()

	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = nextInt()
	}
	dp := make([]int, n)
	for i := range dp {
		dp[i] = INF
	}
	dp[0] = 0

	for i := 1; i < n; i++ {
		for j := 1; i-j >= 0 && j<=k ; j++ {
			chmin(&dp[i], dp[i-j]+abs(h[i]-h[i-j]))
		}
	}
	fmt.Println(dp[n-1])
}
