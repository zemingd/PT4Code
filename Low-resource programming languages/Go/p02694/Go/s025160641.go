package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"reflect"
	"strconv"
)

const INFINITY = math.MaxInt64/2 - 1

func exec(stdin *Stdin, stdout *Stdout) {
	x := stdin.ReadInt()

	n := 100
	year := 0
	for n < x {
		year++
		n += n / 100
	}

	stdout.Println(year)
}

func main() {
	stdout := NewStdout()
	defer stdout.Flush()
	exec(NewStdin(bufio.ScanWords), stdout)
}

type Stdin struct {
	stdin *bufio.Scanner
}

func NewStdin(split bufio.SplitFunc) *Stdin {
	s := Stdin{bufio.NewScanner(os.Stdin)}
	s.stdin.Split(split)
	s.stdin.Buffer(make([]byte, bufio.MaxScanTokenSize), INFINITY)
	return &s
}

func (s *Stdin) Read() string {
	s.stdin.Scan()
	return s.stdin.Text()
}

func (s *Stdin) ReadInt() int {
	n, _ := strconv.Atoi(s.Read())
	return n
}

func (s *Stdin) ReadFloat64() float64 {
	n, _ := strconv.ParseFloat(s.Read(), 64)
	return n
}

func (s *Stdin) ReadIntSlice(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = s.ReadInt()
	}
	return a
}

func (s *Stdin) ReadStringSlice(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = s.Read()
	}
	return a
}

func (s *Stdin) ReadFloat64Slice(n int) []float64 {
	a := make([]float64, n)
	for i := 0; i < n; i++ {
		a[i] = s.ReadFloat64()
	}
	return a
}

type Stdout struct {
	stdout *bufio.Writer
}

func NewStdout() *Stdout {
	return &Stdout{bufio.NewWriter(os.Stdout)}
}

func (s *Stdout) Flush() {
	s.stdout.Flush()
}

func (s *Stdout) Println(a ...interface{}) {
	fmt.Fprintln(s.stdout, a...)
}

func Min(a int, b ...int) int {
	for _, v := range b {
		if v < a {
			a = v
		}
	}
	return a
}

func Max(a int, b ...int) int {
	for _, v := range b {
		if a < v {
			a = v
		}
	}
	return a
}

func Abs(x int) int {
	if x > 0 {
		return x
	} else {
		return x * -1
	}
}

func Pow(x, y int) int {
	z := 1
	for y > 0 {
		if y%2 == 0 {
			x *= x
			y /= 2
		} else {
			z *= x
			y -= 1
		}
	}
	return z
}

func IsPrime(x int) bool {
	if x < 2 {
		return false
	}

	for i := 2; i*i <= x; i++ {
		if x%i == 0 {
			return false
		}
	}
	return true
}

func Gcd(x, y int) int {
	if x < y {
		x, y = y, x
	}

	for y > 0 {
		x, y = y, x%y
	}

	return x
}

func Lcm(x, y int) int {
	return x * y / Gcd(x, y)
}

func CeilDiv(x, y int) int {
	if x%y == 0 {
		return x / y
	} else {
		return x/y + 1
	}
}

func LCS(s, t string) string {
	n := len(s)
	m := len(t)
	dp := make([][]int, n+1)
	for i := 0; i <= n; i++ {
		dp[i] = make([]int, m+1)
	}

	for i := 1; i <= n; i++ {
		for j := 1; j <= m; j++ {
			if s[i-1] == t[j-1] {
				dp[i][j] = dp[i-1][j-1] + 1
			} else {
				dp[i][j] = Max(dp[i-1][j], dp[i][j-1])
			}
		}
	}

	x := n
	y := m
	u := make([]byte, dp[n][m])
	i := dp[n][m] - 1
	for x > 0 && y > 0 {
		if dp[x][y] == dp[x-1][y] {
			x--
		} else if dp[x][y] == dp[x][y-1] {
			y--
		} else {
			x--
			y--
			u[i] = s[x]
			i--
		}
	}

	return string(u)
}

// [0..n) から r個選んだ組合せを生成する。
// r < 0 の場合はすべての組合せを生成する。
func Combinations(n int, r int) [][]int {
	a := [][]int{}
	for i := uint(0); i < (1 << uint(n)); i++ {
		b := []int{}
		for j := uint(0); j < uint(n); j++ {
			if i&(uint(1)<<j) != 0 {
				b = append(b, int(j))
			}
		}

		if r < 0 || len(b) == r {
			a = append(a, b)
		}
	}
	return a
}

// [0..n)の順列を生成する。
func Permutations(n int) [][]int {
	type e struct {
		bit uint
		a   []int
	}

	q := []*e{}
	for i := 0; i < n; i++ {
		q = append(q, &e{bit: 1 << uint(i), a: []int{i}})
	}

	p := [][]int{}
	for x := 0; x < len(q); x++ {
		cur := q[x]
		if cur.bit == (1<<uint(n) - 1) {
			p = append(p, cur.a)
			continue
		}

		for i := 0; i < n; i++ {
			if cur.bit&(1<<uint(i)) != 0 {
				continue
			}

			m := len(cur.a) + 1
			b := make([]int, m)
			copy(b, cur.a)
			b[m-1] = i
			q = append(q, &e{bit: cur.bit | (1 << uint(i)), a: b})
		}
	}
	return p
}

func ReverseSlice(v interface{}) {
	if reflect.TypeOf(v).Kind() == reflect.Slice {
		slice := reflect.ValueOf(v)
		for i1, n := 0, slice.Len(); i1 < n/2; i1++ {
			i2 := n - i1 - 1
			v1 := reflect.ValueOf(slice.Index(i1).Interface())
			slice.Index(i1).Set(slice.Index(i2))
			slice.Index(i2).Set(v1)
		}
	}
}

func ReverseString(s string) string {
	t := []rune(s)
	ReverseSlice(t)
	return string(t)
}

func ToStringSlice(slice interface{}) []string {
	// 本来はerrを返却すべき。 利用する側(=自分)は引数がsliceであることを知っている。
	if reflect.TypeOf(slice).Kind() != reflect.Slice {
		panic(fmt.Sprintf("%v is not slice", slice))
	}

	src := reflect.ValueOf(slice)
	n := src.Len()
	dst := make([]string, n)
	for i := 0; i < n; i++ {
		dst[i] = fmt.Sprintf("%v", src.Index(i))
	}
	return dst
}

func CreateMatrix(x, y int) [][]int {
	matrix := make([][]int, x)
	for i := 0; i < x; i++ {
		matrix[i] = make([]int, y)
	}
	return matrix
}
