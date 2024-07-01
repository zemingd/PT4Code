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
	if k < 10 {
		fmt.Println(k)
		return
	}

	prevRow := make([][]int64, 12)
	for i := 1; i <= 10; i++ {
		n := int64(i - 1)
		prevRow[i] = []int64{n}
	}
	digitCount := 1
	lunlunCount := 9
	for {
		digitCount++
		row := make([][]int64, 12)

		broken := false
		for colI := 1; colI <= 10; colI++ {
			mostLeftNumber := colI - 1

			lunlunNumbers := []int64{}
			slices := [][]int64{prevRow[colI-1], prevRow[colI], prevRow[colI+1]}
			for _, prevLunlunNumbers := range slices {
				for _, prevN := range prevLunlunNumbers {
					lunlunNumber := int64(mostLeftNumber)*
						PowInt64(int64(10), uint(digitCount-1)) +
						prevN
					lunlunNumbers = append(lunlunNumbers, lunlunNumber)

					if mostLeftNumber > 0 {
						lunlunCount++
						if lunlunCount >= k {
							fmt.Println(lunlunNumber)
							broken = true
							break
						}
					}
				}
				if broken {
					break
				}
			}
			row[colI] = lunlunNumbers

			if broken {
				break
			}
		}
		if broken {
			break
		}
		prevRow = row
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
