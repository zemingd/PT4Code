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
	initWordIdx func(int)
}

func NewScannerEx(stdin io.Reader) *ReaderEx {
	var this ReaderEx
	var idx int
	var wordsCnt int
	this.baseScanner = bufio.NewScanner(stdin)
	this.baseScanner.Buffer(make([]byte, 0), 1E+11)
	this.nextWordIdx = func() int {
		cur := idx
		idx = (idx + 1) % wordsCnt
		return cur
	}
	this.initWordIdx = func(wc int) {
		idx = 0
		wordsCnt = wc
	}
	return &this
}

func (me *ReaderEx) Scan(doSplit bool) (isScanned bool) {
	isScanned = me.baseScanner.Scan()
	if doSplit {
		me.words = strings.Fields(me.baseScanner.Text())
	} else {
		me.words = []string{me.baseScanner.Text()}
	}
	me.initWordIdx(len(me.words))
	return
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

func fact(n int) (facts []*factType) {

	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			fa := factType{prime: i}
			for n%fa.prime == 0 {
				n /= fa.prime
				fa.count++
			}
			facts = append(facts, &fa)
		}
	}
	if n > 1 {
		facts = append(facts, &factType{prime: n, count: 1})
	}
	return facts
}
func dec2bin(n int) (ret []bool) {
	for bit := 1 << uint(math.Floor(math.Log2(float64(n)))); ; bit >>= 1 {
		ret = append(ret, n&bit != 0)

		if bit <= 1 {
			return
		}
	}

}

func abs(v int) int {
	if v < 0 {
		v = -v
	}
	return v
}

func b2i(b bool) (i int) {
	if b {
		i = 1
	} else {
		i = 0
	}
	return
}

func solve(stdin io.Reader, stdout io.Writer) {

	r := NewScannerEx(stdin)
	r.Scan(false)
	//n := r.nextInt()
	r.Scan(true)
	h := r.nextStringArray().toInts()
	h = append(h, 0)

	up := false
	preUp := up

	cnt := make(map[int]int, 100)

	for i, preH, end := 0, 0, len(h); i < end; i++ {
		up = h[i] > preH
		if up && !preUp {
			cnt[preH]++
		} else if !up && preUp {
			cnt[preH]--
		}

		preUp = up
		preH = h[i]
	}

	arr := func(mapInstance map[int]int) (arr [][]int) {
		arr = make([][]int, 0, len(mapInstance))
		for key, value := range mapInstance {
			arr = append(arr, []int{key, value})
		}
		return
	}(cnt)

	sort.Sort(IntArraySorter(arr))

	ans := 0
	for w, i := 0, 0; i < len(cnt)-1; i++ {

		w += arr[i][1]
		ans += w * (arr[i+1][0] - arr[i][0])

		if w <= 0 {
			break
		}
	}
	fmt.Fprintln(stdout, ans)
}

type IntArraySorter [][]int

func (a IntArraySorter) Len() int           { return len(a) }
func (a IntArraySorter) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a IntArraySorter) Less(i, j int) bool { return a[i][0] < a[j][0] }
