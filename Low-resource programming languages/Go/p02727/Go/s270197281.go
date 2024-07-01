package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

type Apple struct {
	sweetness int
	color     int //0:red,1:green,2:colorless
}

type Apples []Apple

func (c Apples) Len() int {
	return len(c)
}

func (c Apples) Swap(i, j int) {
	c[i], c[j] = c[j], c[i]
}

func (c Apples) Less(i, j int) bool {
	return c[i].sweetness > c[j].sweetness
}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code --- */
	X, Y, A, B, C := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
	var p Apples = make([]Apple, A)
	var q Apples = make([]Apple, B)
	var r Apples = make([]Apple, C)
	for i := 0; i < A; i++ {
		p[i] = Apple{nextInt(), 0}
	}
	for i := 0; i < B; i++ {
		q[i] = Apple{nextInt(), 1}
	}
	for i := 0; i < C; i++ {
		r[i] = Apple{nextInt(), 2}
	}
	sort.Sort(p)
	sort.Sort(q)
	sort.Sort(r)

	pAns := p[:X]
	qAns := q[:Y]
	ip := len(pAns) - 1
	iq := len(qAns) - 1
	for i := 0; i < C; i++ {
		if ip < 0 && iq < 0 {
			break
		}
		if iq < 0 && ip >= 0 {
			// check only p
			if pAns[ip].sweetness < r[i].sweetness {
				pAns[ip] = r[i]
				ip--
			}
		} else if ip < 0 && iq >= 0 {
			// check only q
			if qAns[iq].sweetness < r[i].sweetness {
				qAns[iq] = r[i]
				iq--
			}
		} else {
			if pAns[ip].sweetness > r[i].sweetness && qAns[iq].sweetness > r[i].sweetness {
				break
			}
			if pAns[ip].sweetness > qAns[iq].sweetness {
				qAns[iq] = r[i]
				iq--
			} else {
				pAns[ip] = r[i]
				ip--
			}
		}
	}
	ans := 0
	for i := 0; i < len(pAns); i++ {
		ans += pAns[i].sweetness
	}
	for i := 0; i < len(qAns); i++ {
		ans += qAns[i].sweetness
	}
	fmt.Println(ans)

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
