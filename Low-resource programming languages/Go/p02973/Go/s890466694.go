package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code ---*/
	N := nextInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}
	c := make([]int, N)
	ci := 1
	for i := N - 1; i >= 0; i-- {
		if c[i] != 0 {
			continue
		}
		c[i] = ci
		x := A[i]
		for j := i - 1; j >= 0; j-- {
			if A[j] < x {
				c[j] = ci
				x = c[j]
			}
		}
		ci++
	}
	fmt.Fprint(out, ci-1, "\n")
	// 5 2 1 4 5 3
}

func solve(N int, a []int, used []int, s2, x1, x2, depth int) bool {
	// fmt.Fprint(out, used, depth, x1, x2, "\n")
	if depth == N {
		// fmt.Fprint(out, "atta\n")
		return x1^x2^a[0] == 0 && x2^a[0]^s2 == 0
	}
	for i := 0; i < N; i++ {
		if used[i] > 0 {
			continue
		}
		if depth >= 2 && x1^x2^a[i] != 0 {
			continue
		}
		used[i] = 1
		if depth == 1 {
			s2 = a[i]
		}
		if solve(N, a, used, s2, x2, a[i], depth+1) {
			return true
		}
		used[i] = 0
	}
	return false
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

// Genericsがないので筋肉で...
// interfaceでの取扱がようわからんし
func containStr(arr []string, target string) bool {
	for _, v := range arr {
		if v == target {
			return true
		}
	}
	return false
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

// mapからkeysとvaluesを返す感じのやつ
// なんかしらんけどmap[interface{}]interface{}しか受け付けない。なんのためのinterface{}やねん
// なので呼ぶときのmapはmap[int]stringとかじゃダメ
func splitKeyValue(m map[interface{}]interface{}) (keys, values []interface{}) {
	switch reflect.TypeOf(m).Kind() {
	case reflect.Map:
		s := reflect.ValueOf(m)
		for _, v := range s.MapKeys() {
			keys = append(keys, v)
			values = append(values, s.MapIndex(v))
		}
	default:
		fmt.Fprintln(out, "fuck")
	}
	return
}