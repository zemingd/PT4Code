package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

var ans = 0
var N int
var M int
var Q int
var a []int
var b []int
var c []int
var d []int

func dfs(A []int, depth int) {
	if depth == N {
		// calc score
		// if more than ans, update ans
		sum := 0
		for i := 0; i < Q; i++ {
			if A[b[i]]-A[a[i]] == c[i] {
				sum += d[i]
			}
		}
		if sum > ans {
			ans = sum
		}
		return
	}
	for i := A[depth]; i <= M; i++ {
		A[depth+1] = i
		dfs(A, depth+1)
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code --- */
	N, M, Q = nextInt(), nextInt(), nextInt()
	a, b, c, d = make([]int, Q), make([]int, Q), make([]int, Q), make([]int, Q)

	for i := 0; i < Q; i++ {
		a[i], b[i], c[i], d[i] = nextInt(), nextInt(), nextInt(), nextInt()
	}
	A := make([]int, N+1)
	A[0] = 1
	dfs(A, 0)

	fmt.Println(ans)
}

func calcScore(Ai int, N int, M int, Q int, a []int, b []int, c []int, d []int) int {
	result := 0
	A := strconv.Itoa(Ai)
	for i := 0; i < Q; i++ {
		bi, _ := strconv.Atoi(string(A[b[i]-1]))
		ai, _ := strconv.Atoi(string(A[a[i]-1]))
		if c[i] == bi-ai {
			result += d[i]
		}
	}
	return result
}

func checkRestriction(A int, N int, M int) bool {
	for i := M + 1; i <= 9; i++ {
		if strings.Contains(strconv.Itoa(A), strconv.Itoa(i)) {
			return false
		}
	}
	if strings.Contains(strconv.Itoa(A), strconv.Itoa(0)) {
		return false
	}
	return true
}

// -*-*-*-*-*-*-*-*-
// * I/O utilities *
// -*-*-*-*-*-*-*-*-

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

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
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

// -*-*-*-*-*-*-*-*-
// * tool snippets *
// -*-*-*-*-*-*-*-*-
func duplicate2Int(base [][]int) (ret [][]int) {
	ret = make([][]int, len(base))
	for i, v := range base {
		ret[i] = append([]int{}, v...)
	}
	return
}

// -*-*-*-*-*-*-*-*-*-*-*-*-*-
// * Algorithms Utility Zone *
// -*-*-*-*-*-*-*-*-*-*-*-*-*-

// -*-*-*-*-*-*-*-
// * 1. nibutan  *
// -*-*-*-*-*-*-*-
func lower_bound(arr []int, target int) int {
	l, r := 0, len(arr)
	for l < r {
		mid := (l + r) / 2
		if arr[mid] < target {
			l = mid + 1
		} else {
			r = mid
		}
	}
	return l
}

func upper_bound(arr []int, target int) int {
	l, r := 0, len(arr)
	for l < r {
		mid := (l + r) / 2
		if target < arr[mid] {
			r = mid
		} else {
			l = mid + 1
		}
	}
	return l
}

// *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
// * math flavor typical theories *
// *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
func gcd(a, b int) int {
	if a > b {
		return gcd(b, a)
	}
	for a != 0 {
		a, b = b%a, a
	}
	return b
}

func pow(a, b int) (ret int) {
	ret = a
	// 10^2 = 100ってことは10に10を1回掛けることだね
	// なので初期値を含めると上限b-1未満
	for i := 0; i < b-1; i++ {
		ret *= a
	}
	return
}

func powMod(n, m, mod int) (ret int) {
	ret = 1
	for m > 0 {
		if m&1 == 1 {
			ret *= n
			ret %= mod
		}
		n *= n
		n %= mod
		m >>= 1
	}
	return ret
}
