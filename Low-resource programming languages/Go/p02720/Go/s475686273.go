package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner()

	k := sc.ReadInt()

	q := make([]int64, 9)
	for i := range q {
		q[i] = int64(i + 1)
	}

	cnt := 0
	for {
		n := q[0]
		cnt++
		if cnt >= k {
			fmt.Println(n)
			return
		}
		q = q[1:]

		base := n * 10
		mostRight := n % 10
		if mostRight > 0 {
			q = append(q, base+mostRight-1)
		}
		{
			q = append(q, base+mostRight)
		}
		if mostRight < 9 {
			q = append(q, base+mostRight+1)
		}
	}
}

// util
// *   math(int)

func AbsInt(x int) int {
	if x >= 0 {
		return x
	}
	return -x
}

func MinInt(values ...int) int {
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

func MaxInt(values ...int) int {
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

func PowInt(base int, exponent uint) int {
	answer := 1
	for i := uint(0); i < exponent; i++ {
		answer *= base
	}
	return answer
}

// *   math(int)

func AbsInt64(x int64) int64 {
	if x >= 0 {
		return x
	}
	return -x
}

func MinInt64(values ...int64) int64 {
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

func MaxInt64(values ...int64) int64 {
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

func PowInt64(base int64, exponent uint) int64 {
	answer := int64(1)
	for i := uint(0); i < exponent; i++ {
		answer *= base
	}
	return answer
}

// * io

type Scanner struct {
	bufScanner *bufio.Scanner
}

func NewScanner() *Scanner {
	bufSc := bufio.NewScanner(os.Stdin)
	bufSc.Split(bufio.ScanWords)
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
