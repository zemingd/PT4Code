package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
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

	n, m, x := nextInt(), nextInt(), nextInt()

	c := make([]int, n)
	a := make([][]int, n)
	for i := 0; i < n; i++ {
		c[i], a[i] = nextInt(), nextInts(m)
	}

	ans := -1

	for b := 1; b < int(math.Pow(2, float64(n))); b++ {
		wc := 0
		wa := make([]int, m)
		s := reverse(fmt.Sprintf("%b", b))
		for i := 0; i < len(s); i++ {
			if s[i] == '1' {
				wc += c[i]
				for j := 0; j < m; j++ {
					wa[j] += a[i][j]
				}
			}
		}

		t := true
		for j := 0; j < m; j++ {
			if wa[j] < x {
				t = false
				break
			}
		}
		//fmt.Fprintln(out, "[DEBUG]", wa)
		if t {
			if ans > wc || ans == -1 {
				ans = wc
			}
		}
	}

	//fmt.Fprintln(out, "[DEBUG]", d)
	//fmt.Fprintln(out, "[DEBUG]", time.Now())
	fmt.Fprintln(out, ans)
}
func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
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
