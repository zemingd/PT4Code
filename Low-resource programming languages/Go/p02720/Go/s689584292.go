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
	dpTable0 := make([]int, 12)
	dpTable[0] = dpTable0
	for i := 1; i <= 10; i++ {
		dpTable0[i] = 1
	}

	lunlunCount := 9
	rowI := 0
	colI := 1
	for lunlunCount < k {
		rowI++
		dpPrevRow := dpTable[rowI-1]
		dpRow := make([]int, 12)
		dpTable = append(dpTable, dpRow)
		for colI = 1; colI <= 10; colI++ {
			dpRowI := dpPrevRow[colI-1] + dpPrevRow[colI] + dpPrevRow[colI+1]
			dpRow[colI] = dpRowI
			if colI > 1 {
				lunlunCount += dpRowI
				if lunlunCount >= k {
					break
				}
			}
		}
	}
	restLunlunCount := k - (lunlunCount - dpTable[rowI][colI])

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
