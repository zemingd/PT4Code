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
	/* --- code --- */
	n, k := nextInt64(), nextInt64()
	a := make([]int64, n)

	for i := int64(0); i < n; i++ {
		a[i] = nextInt64() - 1
	}
	checkRoop(a, k, n)
}
func checkRoop(a []int64, k int64, n int64) {
	m := map[int64]int64{}
	roops := make([]int64, n)
	ind := int64(0)
	endRoop := int64(-1)
	for i := int64(0); i < n; i++ {
		_, ok := m[ind]
		if !ok {
			m[ind] = a[ind]
			roops[i] = ind
			ind = a[ind]
			continue
		} else {
			endRoop = i
			break
		}
	}
	// find start of roop
	startRoop := int64(-1)
	for i := int64(0); i < n; i++ {
		if roops[i] == ind {
			startRoop = i
			break
		}
	}

	// fmt.Println(roops, startRoop, endRoop)

	// calc the answer
	if k < int64(len(roops[:endRoop])) {
		fmt.Println(roops[k] + 1)
		return
	}
	ans := (k - int64(len(roops[:startRoop]))) % int64(len(roops[startRoop:endRoop]))
	fmt.Println(roops[startRoop+ans] + 1)

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

func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
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
