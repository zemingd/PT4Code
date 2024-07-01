package main

// 某DP, 再帰でやったらTLEになる原因がメモ化再帰しか浮かばないんだけどループでやるDPってやったことないので練習のため来ました
// ループはできたのでこっちは再帰で

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"reflect"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

var n, k int
var h []int

var dp []int

func rec(i int) int {
	if dp[i] < math.MaxInt64 {
		return dp[i]
	}
	if i == 1 {
		// 最後の一手しかない
		dp[i] = abs(h[i], h[i-1])
		return dp[i]
	}
	ret := math.MaxInt64
	// いまのとこから0を下回らないかぎり-1~-kして再帰的に答えを集める
	for j := 1; j <= k; j++ {
		if i-j < 0 {
			break
		}
		ret = min(ret, abs(h[i], h[i-j])+rec(i-j))
	}
	dp[i] = ret
	return dp[i]
}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code ---*/
	n, k = nextInt(), nextInt()
	h = nextInts(n)
	dp = make([]int, n+1)
	for i := 0; i <= n; i++ {
		dp[i] = math.MaxInt64
	}
	dp[0] = 0
	fmt.Fprint(out, rec(n-1))
}

func abs(a, b int) (ret int) {
	if a < 0 {
		a *= -1
	}
	if b < 0 {
		b *= -1
	}
	ret = a - b
	if ret < 0 {
		ret *= -1
	}
	return
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func PrintOut(src interface{}, joinner string) {
	switch reflect.TypeOf(src).Kind() {
	case reflect.Slice:
		s := reflect.ValueOf(src)
		for idx := 0; idx < s.Len(); idx++ {
			fmt.Fprintf(out, "%v", s.Index(idx))
			if idx < s.Len()-1 {
				fmt.Fprintf(out, "%s", joinner)
			} else {
				fmt.Fprintln(out)
			}
		}
	default:
		fmt.Fprintln(out, "fuck")
	}
}
