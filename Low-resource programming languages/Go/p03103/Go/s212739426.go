package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"

)

func main() {
	solve(os.Stdin, os.Stdout)
}

type ReaderEx struct {
	baseScanner *bufio.Scanner
	words       []string
	nextWordIdx func() int
	initWordIdx func()
}

func NewScannerEx(stdin io.Reader) *ReaderEx {
	var this ReaderEx
	var idx int
	this.baseScanner = bufio.NewScanner(stdin)
	this.baseScanner.Buffer(make([]byte, 0), 1E+11)
	this.nextWordIdx = func() int {
		cur := idx
		idx++
		return cur
	}
	this.initWordIdx = func() {
		idx = 0
	}
	return &this
}

func (me *ReaderEx) ScanAndSplit() (isScanned bool) {
	isScanned = me.baseScanner.Scan()

	me.words = strings.Fields(me.baseScanner.Text())
	me.initWordIdx()
	return
}

func (me *ReaderEx) Scan() (ok bool) {
	ok = me.baseScanner.Scan()
	return
}
func (me *ReaderEx) getString() string {
	return me.baseScanner.Text()
}

func (me *ReaderEx) getInt() int {
	n, err := strconv.Atoi(me.baseScanner.Text())
	defer func() {
		if err != nil {
			panic(err)
		}
	}()

	return n
}

func (me *ReaderEx) nextBytes() []byte {
	return []byte(me.words[me.nextWordIdx()])
}
func (me *ReaderEx) nextString() string {
	return me.words[me.nextWordIdx()]
}

type StringArray []string

func (me *ReaderEx) nextStringArray() StringArray {
	return me.words[me.nextWordIdx():]
}

func (me StringArray) toStrings() []string {
	return me
}

func (me StringArray) toInts() []int {
	strValues := me.toStrings()
	values := make([]int, len(strValues))
	for i, v := range strValues {
		n, err := strconv.Atoi(v)
		if err != nil {
			panic(err)
		}
		values[i] = n
	}
	return values
}
func (me *ReaderEx) nextInt() int {
	n, err := strconv.Atoi(me.words[me.nextWordIdx()])

	defer func() {
		if err != nil {
			panic(fmt.Sprintf("getInt(%d)", n))
		}
	}()
	return n
}

func pow(x, y, mod int) (ans int) {

	ans = 1
	for bit := 1 << uint(math.Floor(math.Log2(float64(y)))); ; bit >>= 1 {
		if y&bit != 0 {
			ans *= x
			if mod > 0 {
				ans %= mod
			}
		}
		if bit <= 1 {
			return
		}
		ans *= ans
		if mod > 0 {
			ans %= mod
		}
	}
}

type factType struct {
	prime int
	count int
}

func fact(n int) (facts []factType) {

	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			fa := factType{prime: i}
			for n%fa.prime == 0 {
				n /= fa.prime
				fa.count++
			}
			facts = append(facts, fa)
		}
	}
	if n > 1 {
		facts = append(facts, factType{prime: n, count: 1})
	}
	return facts
}

type line struct {
	aYen int
	bHon int
}

func min(v int, vs ...int) int {
	for _, vi := range vs {
		if vi < v {
			v = vi
		}
	}
	return v
}

type lineSorter []line

func (a lineSorter) Len() int           { return len(a) }
func (a lineSorter) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a lineSorter) Less(i, j int) bool { return a[i].aYen < a[j].aYen }
func solve(stdin io.Reader, stdout io.Writer) {
	r := NewScannerEx(stdin)
	r.ScanAndSplit()
	n, m := r.nextInt(), r.nextInt()

	lines := make([]line, n)
	for i := 0; i < n; i++ {
		r.ScanAndSplit()
		lines[i] = line{aYen: r.nextInt(), bHon: r.nextInt()}
	}

	sort.Sort(lineSorter(lines))

	ans := 0
	for _, l := range lines {
		if m <= 0 {
			break
		}
		w := min(m, l.bHon)
		m -= w
		ans += w * l.aYen
	}
	fmt.Fprintln(stdout, ans)
}

