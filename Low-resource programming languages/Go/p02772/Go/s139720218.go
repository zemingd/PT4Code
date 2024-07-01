package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"io/ioutil"
	"math"
	"os"
	"reflect"
	"strconv"
)

func main() {
	sc := NewBufScanner(os.Stdin)
	n := sc.Int()

	for i := 0; i < n; i++ {
		a := sc.Int()
		if a % 2 == 0 {
			if a % 3 != 0 && a % 5 != 0 {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("APPROVED")
}

type BufScanner struct {
	*bufio.Scanner
}

func NewBufScanner(r io.Reader) *BufScanner {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	// s.Split(scanWords)
	return &BufScanner{s}
}

func scanWords(data []byte, atEOF bool) (advance int, token []byte, err error) {
	start := 0
	for isSpace(data[start]) {
		start++
	}
	for i := start; i < len(data); i++ {
		if isSpace(data[i]) {
			return i+1, data[start:i], nil
		}
	}
	if atEOF && len(data) > start {
		return len(data), data[start:], nil
	}
	return start, nil, nil
}
func isSpace(b byte) bool {
	return b == ' ' || b == '\n' || b == '\r' || b == '\t'
}

func (s *BufScanner) String() string {
	s.Scan()
	return s.Text()
}

func (s *BufScanner) Int() int {
	return int(s.UInt())
}

func (s *BufScanner) UInt() uint64 {
	s.Scan()
	i, e := strconv.ParseUint(s.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func (s *BufScanner) Float64() float64 {
	s.Scan()
	i, e := strconv.ParseFloat(s.Text(),64)
	if e != nil {
		panic(e)
	}
	return i
}

func (s *BufScanner) ArrayInt(n int) (r []int) {
	for i := 0; i < n; i++ {
		r = append(r, s.Int())
	}
	return
}

///////////////


// FullScanner for stdin
type FullScanner struct {
	*bytes.Buffer
}

func NewFullScanner(r io.Reader) *FullScanner {
	b, err := ioutil.ReadAll(r)
	if err != nil {
		panic(err)
	}
	buf := bytes.NewBuffer(b)
	return &FullScanner{buf}
}

func (s *FullScanner) Int() (r int) {
	fmt.Fscan(s, &r)
	return
}

// Scanner for stdin
type Scanner struct {
}

func NewScanner() *Scanner {
	return &Scanner{}
}

func (s *Scanner) Text() (r string) {
	fmt.Scan(&r)
	return
}

func (s *Scanner) UInt() (r uint64) {
	fmt.Scan(&r)
	return
}

func (s *Scanner) Int() (r int) {
	fmt.Scan(&r)
	return
}

func (s *Scanner) UInt32() (r uint32) {
	fmt.Scan(&r)
	return
}

func (s *Scanner) Int32() (r int32) {
	fmt.Scan(&r)
	return
}

func (s *Scanner) Double() (r float64) {
	fmt.Scan(&r)
	return
}

func (s *Scanner) ArrayText(n int) (r []string) {
	for i := 0; i < n; i++ {
		r = append(r, s.Text())
	}
	return
}

func (s *Scanner) ArrayInt(n int) (r []int) {
	for i := 0; i < n; i++ {
		r = append(r, s.Int())
	}
	return
}

func (s *Scanner) ArrayDouble(n int) (r []float64) {
	for i := 0; i < n; i++ {
		r = append(r, s.Double())
	}
	return
}

func arrayIntToArrayString(arr []int) (r []string) {
	for _, v := range arr {
		r = append(r, fmt.Sprintf("%d", v))
	}
	return
}

func arrayStringToArrayInt(arr []string) (r []int) {
	for _, v := range arr {
		i, e := strconv.ParseInt(v, 10, 64)
		if e != nil {
			panic(e)
		}
		r = append(r, int(i))
	}
	return
}

func Sum(arr ...int) (sum int) {
	for _, x := range arr {
		sum += x
	}
	return
}


// https://gobyexample.com/collection-functions
func AllInt(vs []int, f func(int) bool) bool {
	for _, v := range vs {
		if !f(v) {
			return false
		}
	}
	return true
}


// --
//  I/O utilities
//

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}

var out = bufio.NewWriter(os.Stdout)
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

// --
// math flavor typical theories
//

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

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
	// 10^2 = 100 は10に10を1回掛けること
	// つまり初期値を含めると上限b-1未満
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

// http://cavaliercoder.com/blog/optimized-abs-for-int64-in-go.html
func abs(n int) int {
	y := n >> 63
	return (n ^ y) - y
}

// --
// Algorithms Utility Zone
//

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

