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

	n := nextInt()

	xl := make([]XL, n)

	for i := 0; i < n; i++ {
		xl[i].x = nextInt()
		xl[i].l = nextInt()
	}
	sort.Sort(XSort(xl))

	ans := 0

	p := xl[0].x - xl[0].l - 1

	for i := 0; i < len(xl); i++ {
		if p <= xl[i].x-xl[i].l {
			p = xl[i].x + xl[i].l
			ans++
		}
	}

	//	fmt.Fprintln(out, "[DEBUG]]", a)
	fmt.Fprintln(out, ans)
}

type XL struct {
	x int
	l int
}

type XSort []XL

func (a XSort) Len() int           { return len(a) }
func (a XSort) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a XSort) Less(i, j int) bool { return a[i].x+a[i].l < a[j].x+a[j].l }

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
