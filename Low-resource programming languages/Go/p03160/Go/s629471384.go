package main

// 某DP, 再帰でやったらTLEになる原因がメモ化再帰しか浮かばないんだけどループでやるDPってやったことないので練習のため来ました
// ループできたのでメモ化再帰やってみる
// 組み合わせの総数じゃなくて最大値や最小値を求める場合、返り値が苦手だってのがわかった
// （引数にコストやポイントを含めるとうまくいかない）
// （そういう場合は次の再帰に渡すときではなくかえってきたものに加算/減算など手を加える）
// トップダウン的に配るDPでやってみる（ボトムアップだとなんかできん）

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
var h []int

var dp []int

func rec(i int) int {
	// トップダウンでやる
	if dp[i] > -1 {
		return dp[i]
	}
	if i == 1 {
		ret := int(math.Abs(float64(h[i] - h[i-1])))
		dp[i] = ret
		return ret
	}
	epi_one := rec(i-1) + int(math.Abs(float64(h[i]-h[i-1])))
	epi_two := rec(i-2) + int(math.Abs(float64(h[i]-h[i-2])))
	ret := int(math.Min(float64(epi_one), float64(epi_two)))
	dp[i] = ret
	return ret
}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code ---*/
	n = nextInt()
	h = nextInts(n)
	dp = make([]int, n+1)
	for i := 0; i <= n; i++ {
		dp[i] = -1
	}
	dp[0] = 0
	fmt.Fprint(out, rec(n-1))
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
