// Codeforces 1.12.6
// AtCoder 1.6
// Paiza 1.7.3

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type (
	in struct {
		Scanner *bufio.Scanner
	}
	str string
	lm  struct{}
	su  struct{}
)

func (in *in) s() string {
	in.Scanner.Scan()
	return in.Scanner.Text()
}

func (in *in) i() int64 {
	return in.ibase(10)
}

func (in *in) ibase(base int) int64 {
	i, _ := strconv.ParseInt(in.s(), base, 64)
	return i
}

func (in *in) f() float64 {
	i, _ := strconv.ParseFloat(in.s(), 64)
	return i
}

func (in *in) ss(n int64) []string {
	a := make([]string, n)
	for i := range a {
		a[i] = in.s()
	}
	return a
}

func (in *in) is(n int64) []int64 {
	a := make([]int64, n)
	for i := range a {
		a[i] = in.i()
	}
	return a
}

func (in *in) fs(n int64) []float64 {
	a := make([]float64, n)
	for i := range a {
		a[i] = in.f()
	}
	return a
}

func (in *in) imat(h int64, w int64) [][]int64 {
	a := make([][]int64, h)
	for y := range a {
		a[y] = make([]int64, w)
		for x := range a[y] {
			a[y][x] = in.i()
		}
	}
	return a
}

func stdin() in {
	scn := bufio.NewScanner(os.Stdin)
	scn.Split(bufio.ScanWords)
	max := 200000
	buf := make([]byte, max)
	scn.Buffer(buf, max)
	return in{Scanner: scn}
}

func (*lm) max(a int64, b int64) int64 {
	if a > b {
		return a
	}
	return b
}

func (*lm) min(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func (*lm) abs(a int64) int64 {
	if a < 0 {
		return -a
	}
	return a
}

func (lm *lm) gcd(a, b int64) int64 {
	// returns greatest common divisor.
	if a < b {
		a, b = b, a
	}
	if b == 0 {
		return a
	}
	return lm.gcd(b, a%b)
}

func (lm *lm) lcm(a, b int64) int64 {
	// returns least common multiple.
	gcd := lm.gcd(a, b)
	return gcd * (a / gcd) * (b / gcd)
}

func (*su) iarr(arr []int64) string {
	// int slice to string.
	ret := make([]string, len(arr))
	for i, x := range arr {
		ret[i] = strconv.FormatInt(x, 10)
	}
	return strings.Join(ret, " ")
}

func (su *su) imat(matrix [][]int64) string {
	// int slice matrix to string.
	ret := make([]string, len(matrix))
	for i := range matrix {
		ret[i] = su.iarr(matrix[i])
	}
	return strings.Join(ret, "\n")
}

func (*su) bool(b bool) str {
	if b {
		return "Yes"
	}
	return "No"
}

func (s str) upper() string {
	return strings.ToUpper(string(s))
}

func (s str) lower() string {
	return strings.ToLower(string(s))
}

type int64Slice []int64

func (p int64Slice) Len() int           { return len(p) }
func (p int64Slice) Less(i, j int) bool { return p[i] < p[j] }
func (p int64Slice) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func main() {
	// utilities.
	const zz int64 = int64(0)
	const mod int64 = int64(1000000007)
	in, lm, su := stdin(), lm{}, su{}
	_, _, _ = in, lm, su

	// read here.
	n := in.i()
	v := in.fs(n)

	// solve here.

	// always merge 2 least valuable items.
	sort.Sort(sort.Float64Slice(v))
	ans := 0.0
	for i := range v {
		if i == 0 {
			continue
		}
		v[i] = (v[i] + v[i-1]) / 2
		ans = v[i]
	}

	printable := ans
	// print here.
	fmt.Println(printable)
}
