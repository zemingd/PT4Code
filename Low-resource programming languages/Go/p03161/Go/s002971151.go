package main

// 某DP, 再帰でやったらTLEになる原因がメモ化再帰しか浮かばないんだけどループでやるDPってやったことないので練習のため来ました

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

var n int
var k int
var h []int

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code ---*/
	n, k = nextInt(), nextInt()
	h = nextInts(n)
	dp := make([]int, n+10)
	INF := int(math.Pow(10, 9))
	for i := 0; i < len(dp); i++ {
		dp[i] = INF
	}
	dp[0] = 0
	for i := 1; i < n; i++ {
		// 現在のところから0を下回らない限り-1 ~ -kしたところとの差を集めて計算し最小値を更新していく
		ans := INF
		for j := 1; j <= k; j++ {
			if i >= j {
				ans = min(ans, dp[i-j]+int(math.Abs(float64(h[i]-h[i-j]))))
			} else {
				break
			}
		}
		dp[i] = ans
	}
	fmt.Fprintln(out, dp[n-1])
}

func min(a, b int) int {
	if a <= b {
		return a
	} else {
		return b
	}
}

func max(a, b int) int {
	if a <= b {
		return b
	} else {
		return a
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
