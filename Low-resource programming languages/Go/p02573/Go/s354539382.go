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
	fmap := make([]slist, n)
	for cnt := 0; cnt < n; cnt++ {
		fmap[cnt] = makeSlist()
	}

	fcnt := make([]int, n)
	for cnt := 0; cnt < m; cnt++ {
		a := nextInt() - 1
		b := nextInt() - 1
		if !fmap[a].contains(b) {
			fmap[a].add(b)
		}
		if !fmap[b].contains(a) {
			fmap[b].add(a)
		}
	}

	ans := 0
	for i := 0; i < n; i++ {
		if fcnt[i] == 0 {
			q := []int{i}
			f := 0
			for len(q) > 0 {
				n := q[0]
				if fcnt[n] == 0 {
					f++
					fcnt[n] = -1
					for j := 0; j < fmap[n].len(); j++ {
						q = append(q, fmap[n].get(j))
					}
				}
				q = q[1:]
			}
			ans = maxInt(ans, f)
		}
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
func (s slist) len() int {
	return len(s.l)
}
func (s slist) get(index int) int {
	return s.l[index]
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
func sign(x int) int {
	if x == 0 {
		return 0
	}
	if x > 0 {
		return 1
	}
	return -1
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
