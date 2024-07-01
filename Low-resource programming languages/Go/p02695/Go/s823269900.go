package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner()

	n = sc.ReadInt()
	m = sc.ReadInt()
	q = sc.ReadInt()
	abcds := make([]ABCD, q)
	for i := 0; i < q; i++ {
		abcds[i] = ABCD{sc.ReadInt(), sc.ReadInt(), sc.ReadInt(), sc.ReadInt()}
	}

	as = make([]A, 0, 200000)
	fillAs(1, m, 0, make(A, n))

	maxD := 0
	for _, a := range as {
		d := totalD(abcds, a)
		if d > maxD {
			maxD = d
		}
	}

	fmt.Println(maxD)
}

var n, m, q int
var as []A

type ABCD struct {
	A int
	B int
	C int
	D int
}

type A []int

func fillAs(min int, m int, digit int, cur A) {
	if digit == n-1 {
		for i := min; i <= m; i++ {
			a := make(A, n)
			copy(a, cur)
			a[digit] = i
			as = append(as, a)
		}
	} else {
		for i := min; i <= m; i++ {
			cur[digit] = i
			fillAs(i, m, digit+1, cur)
		}
	}
}

func totalD(abcds []ABCD, a A) int {
	total := 0
	for _, abcd := range abcds {
		if a[abcd.B-1]-a[abcd.A-1] == abcd.C {
			total += abcd.D
		}
	}
	return total
}

// util
// *   math/simple

func Abs(x int) int {
	if x >= 0 {
		return x
	}
	return -x
}

func Min(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}
	min := values[0]
	for _, v := range values {
		if v < min {
			min = v
		}
	}
	return min
}

func Max(values ...int) int {
	if len(values) == 0 {
		panic("no values")
	}
	max := values[0]
	for _, v := range values {
		if v > max {
			max = v
		}
	}
	return max
}

func Pow(base int, exponent uint) int {
	answer := 1
	for i := uint(0); i < exponent; i++ {
		answer *= base
	}
	return answer
}

// *   io

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
	bufSc.Buffer(nil, 100000000)
	return &Scanner{bufSc}
}

func (sc *Scanner) ReadString() string {
	bufSc := sc.bufScanner
	bufSc.Scan()
	return bufSc.Text()
}

func (sc *Scanner) ReadInt() int {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.Atoi(text)
	if err != nil {
		panic(err)
	}
	return num
}
