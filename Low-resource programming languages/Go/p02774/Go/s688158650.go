package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}

//var done []bool = make([]bool, 10)
//var memo []int = make([]int, 10)

//func fib(n int) int {
//	fmt.Println(n)
//	if n == 0 {
//		return 0
//	}
//	if n == 1 {
//		return 1
//	}
//	if done[n] {
//		fmt.Println("done" + fmt.Sprint(n))
//		return memo[n]
//	}
//	done[n] = true
//	memo[n] = fib(n-1) + fib(n-2)
//	return memo[n]
//}

var m map[string]int = make(map[string]int)
var mInt map[int]int = make(map[int]int)

//func fib(n int) int {
//	dp[0] = 0
//	dp[1] = 1
//	for i := 2; i <= n; i++ {
//		dp[i] = dp[i-1] + dp[i-2]
//	}
//	return dp[n]
//}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	n := nextInt()
	k := nextInt()
	ns := nextInts(n)
	var dp []int = make([]int, n)
	sort.Ints(ns)
	for i := 0; i < n-1; i++ {
		dp[i] = ns[i] * ns[i+1]
	}
	fmt.Fprint(out, dp[k-1])
}
