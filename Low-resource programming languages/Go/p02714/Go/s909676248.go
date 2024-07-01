package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner()

	n := sc.ReadInt()
	s := sc.ReadString()

	if n < 3 {
		fmt.Println(0)
		return
	}

	r := 0
	g := 0
	b := 0
	for i := 0; i < n; i++ {
		c := s[i]
		if c == 'R' {
			r++
		} else if c == 'G' {
			g++
		} else {
			b++
		}
	}

	cnt := int64(r) * int64(g) * int64(b)

	for j := 1; j < n-1; j++ {
		cj := s[j]
		if j-0 >= (n-1)-j {
			for k := j + 1; k < n; k++ {
				ck := s[k]
				if ck == cj {
					continue
				}

				i := j*2 - k
				ci := s[i]
				if ci != cj && ci != ck {
					cnt--
				}
			}
		} else {
			for i := 0; i <= j-1; i++ {
				ci := s[i]
				if ci == cj {
					continue
				}

				k := j*2 - i
				ck := s[k]
				if ck != cj && ck != ci {
					cnt--
				}
			}
		}
	}

	fmt.Println(cnt)
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

func Abs64(x int64) int64 {
	if x >= 0 {
		return x
	}
	return -x
}

func Min64(values ...int64) int64 {
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

func Max64(values ...int64) int64 {
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

func Pow64(base int64, exponent uint) int64 {
	answer := int64(1)
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

func (sc *Scanner) ReadInt64() int64 {
	bufSc := sc.bufScanner
	bufSc.Scan()
	text := bufSc.Text()

	num, err := strconv.ParseInt(text, 10, 64)
	if err != nil {
		panic(err)
	}
	return num
}
