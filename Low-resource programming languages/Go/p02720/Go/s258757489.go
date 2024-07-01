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

	dpTable := make([][]int, 1)
	// dynamic planning table[row index][column index]
	//
	// row index: the length of lunlun numbers - 1
	//   e.g. dpTable[2] means the length is 3. 123, 234, etc.
	//
	// column index:
	//   * 0 is dummy
	//   * 1 to 10 is the [row index - 1]th number + 1
	//     e.g. dpTable[2][5] means the 3rd number is 4. 432, 443, etc.
	//          dpTable[2][1] means the 3rd number is 0. 001, 012, etc.
	//   * 11 is dummy
	//
	// cell: the count of lunlun numbers
	//   e.g. dpTable[2][5] == 100 (really it is wrong) means
	//        the count of lunlun numbers like "4**" is 100.
	//        dbTable[*][0 or 11] is always 0.

	// fill zeroth row
	// Let 0 be a lunlun number though in fact it is not.
	dpRow0 := make([]int, 12)
	dpTable[0] = dpRow0
	for i := 1; i <= 10; i++ {
		dpRow0[i] = 1
	}

	// fill first row and more
	lunlunCount := 9 // do not include 0 here
	rowI := 0        // row index
	colI := 1        // column index
	for lunlunCount < k {
		rowI++
		dpPrevRow := dpTable[rowI-1]
		dpRow := make([]int, 12)
		dpTable = append(dpTable, dpRow)
		for colI = 1; colI <= 10; colI++ {
			dpRowI := dpPrevRow[colI-1] + dpPrevRow[colI] + dpPrevRow[colI+1]
			dpRow[colI] = dpRowI

			// If colI == 1, the number has leading zero,
			// so lunlunCount does not include it.
			if colI > 1 {
				lunlunCount += dpRowI
				if lunlunCount >= k {
					break
				}
			}
		}
	}

	restLunlunCount := k - (lunlunCount - dpTable[rowI][colI])
	// The [k]th lunlun number belongs to dpTable[rowI][colI] and
	// it is [restLunlunCount]th number there.

	// compute the answer with determining where the [k]th lunlun number
	// belongs to in every row
	answer := int64(colI - 1)
	for rowI > 0 {
		rowI--
		colI--
		checkedLunlunCount := 0
		for i := 0; i < 3; i++ {
			next := dpTable[rowI][colI]
			if checkedLunlunCount+next >= restLunlunCount {
				answer = answer*10 + int64(colI-1)
				restLunlunCount -= checkedLunlunCount
				break
			}
			checkedLunlunCount += next
			colI++
		}
	}

	fmt.Println(answer)
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
