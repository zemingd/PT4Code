package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	/*/TODO:!!!!!!!テスト用!!!!!!!!!
	sc = bufio.NewScanner(strings.NewReader(`
										`))
	//TODO:!!!!!!!テスト用!!!!!!!!!*/

	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!caution!!!! you must use Fprint(out, ) not Print()
	/* --- code --- */
	//fmt.Fprintln(out, "[DEBUG]", time.Now())

	k := nextInt()

	if k%2 == 0 || k%5 == 0 {
		ans := -1
		fmt.Fprintln(out, ans)
		return
	}

	l := 9 * k
	if k%7 == 0 {
		l /= 7
	}

	w := 10
	ans := 1

	for i := 0; i < 1000000; i++ {
		w %= l
		if w == 1 {
			break
		}
		w *= 10
		ans++
	}

	//fmt.Fprintln(out, "[DEBUG]", a)
	fmt.Fprintln(out, ans)

}

// 挿入ソート配列
type slist struct {
	l []int
}

func makeSlist() slist {
	return slist{[]int{}}
}

func (s *slist) add(a int) {
	pos := sort.Search(len(s.l), func(i int) bool { return s.l[i] >= a })
	if pos < len(s.l) {
		s.l = append(s.l[:pos+1], s.l[pos:]...)
		s.l[pos] = a
	} else {
		s.l = append(s.l, a)
	}
}
func (s slist) contains(a int) bool {
	pos := sort.Search(len(s.l), func(i int) bool { return s.l[i] >= a })
	return pos < len(s.l) && s.l[pos] == a
}

//------------------------------------------------------------------------------

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

func chars(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}

func printArray(a []int) {
	for i := 0; i < len(a); i++ {
		if i >= 1 {
			fmt.Fprint(out, " ")
		}
		fmt.Fprint(out, a[i])
	}
	fmt.Fprintln(out)
}

func absInt(x int) int {
	return int(math.Abs(float64(x)))
}
func minInt(x, y int) int {
	if x < y {
		return x
	}
	return y
}
func maxInt(x, y int) int {
	if x > y {
		return x
	}
	return y
}
func log10(x int) float64 {
	return math.Log10(float64(x))
}
func divCeil(shi, bo int) int {
	ans := shi / bo
	if shi%bo != 0 {
		ans++
	}
	return ans
}
