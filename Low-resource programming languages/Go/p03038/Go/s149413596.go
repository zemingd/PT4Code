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
	m := nextInt()

	a := nextInts(n)
	sort.Ints(a)

	bc := make([]BC, m)

	for i := 0; i < m; i++ {
		bc[i].b = nextInt()
		bc[i].c = nextInt()
	}
	sort.Sort(PSort(bc))

	aindex := 0
	for i := m - 1; i >= 0; i-- {
		for j := 0; j < bc[i].b; j++ {
			if aindex >= n {
				i = -1
				break
			}
			if a[aindex] > bc[i].c {
				i = -1
				break
			}
			a[aindex] = bc[i].c
			aindex++
		}
	}
	ans := 0
	for i := 0; i < n; i++ {
		ans += a[i]
	}

	//	fmt.Fprintln(out, "[DEBUG]]", a)
	fmt.Fprintln(out, ans)
}

type BC struct {
	b int
	c int
}

type PSort []BC

func (a PSort) Len() int           { return len(a) }
func (a PSort) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a PSort) Less(i, j int) bool { return a[i].c < a[j].c }

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
