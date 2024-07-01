package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"
)

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	return sc
}

func main() {
	sc = initScanner(os.Stdin)
	resolve()
}

func resolve() {
	n, k := scanInt(sc), scanInt(sc)
	rate := newRational(0, 1)
	for i := 1; i <= n; i++ {
		rate = ratAdd(rate, pWin(i, k))
	}
	rate = ratDiv(rate, newRational(n, 1))
	fmt.Printf("%.10f\n", rate.Float64())
}

func pWin(n, k int) rational {
	ex := 0
	cur := n
	for cur < k {
		cur <<= 1
		ex++
	}
	rate := newRational(1, 1)
	for ; ex > 0; ex-- {
		rate = ratDiv(rate, newRational(2, 1))
	}
	return rate
}

type rational struct {
	frac, denomi int
	neg          int
}

func newRational(frac, denomi int) rational {
	r := rational{frac: frac, denomi: denomi}
	r.canonicalize()
	return r
}

func ratMul(x, y rational) rational {
	r := rational{
		frac:   x.frac * y.frac,
		denomi: x.denomi * y.denomi,
	}
	r.canonicalize()
	return r
}

func ratDiv(x, y rational) rational {
	return ratMul(x, ratInv(y))
}

func ratInv(x rational) rational {
	return rational{frac: x.denomi, denomi: x.frac}
}

func ratAdd(x, y rational) rational {
	r := rational{
		frac:   x.frac*y.denomi + y.frac*x.denomi,
		denomi: x.denomi * y.denomi,
	}
	r.canonicalize()
	return r
}

func ratSub(x, y rational) rational {
	return ratAdd(x, rational{frac: -y.frac, denomi: y.denomi})
}

func (r rational) Float64() float64 {
	b := float64(r.frac) / float64(r.denomi)
	if r.neg == 1 {
		return -b
	}
	return b
}

func (r rational) String() string {
	b := fmt.Sprintf("%d/%d", r.frac, r.denomi)
	if r.neg == 1 {
		return "-" + b
	}
	return b
}

func (r rational) equal(other rational) bool {
	r.canonicalize()
	other.canonicalize()

	return r.neg == other.neg &&
		r.frac == other.frac &&
		r.denomi == other.denomi
}

func (r *rational) canonicalize() {
	if r.frac < 0 {
		r.neg ^= 1
		r.frac = -r.frac
	}
	if r.denomi < 0 {
		r.neg ^= 1
		r.denomi = -r.denomi
	}
	d := gcd(r.frac, r.denomi)
	r.frac /= d
	r.denomi /= d
}

func nextRational(sc *bufio.Scanner) rational {
	s := nextString(sc)
	i := strings.Index(s, ".")
	if i != -1 {
		decimalDigit := len(s) - i - 1
		fr, _ := strconv.Atoi(strings.Replace(s, ".", "", 1))
		return newRational(fr, int(math.Pow10(decimalDigit)))
	}
	i = strings.Index(s, "/")
	if i != -1 {
		fr, _ := strconv.Atoi(s[0:i])
		de, _ := strconv.Atoi(s[i+1 : len(s)])
		return newRational(fr, de)
	}
	fr, _ := strconv.Atoi(s)
	return newRational(fr, 1)
}
func gcd(a, b int) int {
	for b > 0 {
		t := a / b
		a, b = b, a-t*b
	}
	return a
}
func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	return int(a)
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nextIntSlice(sc *bufio.Scanner, n int) (a []int) {

	a = make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt(sc)
	}
	return a
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
