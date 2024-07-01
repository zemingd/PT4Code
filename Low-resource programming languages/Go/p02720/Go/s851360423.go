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

	n := int64(0)
	lunlunCount := 0
	for lunlunCount < k {
		n++
		chars := strconv.FormatInt(n, 10)

		broken := false
		c0, _ := strconv.Atoi(string(chars[0]))
		for i := 1; i < len(chars); i++ {
			c1, _ := strconv.Atoi(string(chars[i]))
			if AbsInt(c1-c0) > 1 {
				broken = true
				break
			}
		}
		if !broken {
			lunlunCount++
		}
	}

	fmt.Println(n)
}

// util
// * math

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
