package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 10 * 10 * 10 * 10 * 10 * 10
)

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}

	return sc.Text()
}

func getRev(before byte) byte {
	if before == '0' {
		return '1'
	}
	return '0'
}

func cSum() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	k := scanInt(sc)
	s := scanStr(sc)

	// fmt.Printf("n = %+v\n", n)
	// fmt.Printf("k = %+v\n", k)
	// fmt.Printf("s = %+v\n", s)

	csum := make([]int, 0, len(s)+10)

	before := s[0]
	csum = append(csum, 1)
	for i := 1; i < n; i++ {
		if s[i] != before {
			csum = append(csum, csum[len(csum)-1]+1)
		} else {
			csum[len(csum)-1]++
		}
		before = s[i]
	}

	// fmt.Printf("csum = %+v\n", csum)

	max := 0
	rightIndexFunc := zeroRightIndex
	if s[0] != '0' {
		rightIndexFunc = oneRightIndex
	}
	leftIndexFunc := zeroLeftIndex
	if s[0] != '0' {
		leftIndexFunc = oneLefttIndex
	}
	for i := 0; i < len(csum); i += 2 {
		rightIndex := rightIndexFunc(i, k)
		var right int
		if rightIndex > len(csum)-1 {
			rightIndex = len(csum) - 1
		}
		right = csum[rightIndex]

		leftIndex := leftIndexFunc(i)
		var left int
		if leftIndex < 0 {
			leftIndex = -1
			left = 0
		} else {
			left = csum[leftIndex]
		}
		length := right - left
		// fmt.Printf("[%d](%d) - [%d](%d): %d\n", leftIndex, left, rightIndex, right, length)
		if length > max {
			max = length
		}
	}

	fmt.Printf("%d\n", max)
}

func zeroLeftIndex(i int) int {
	return i - 2
}

func oneLeftIndex(i int) int {
	return i - 1
}

func zeroRightIndex(i int, k int) int {
	return i + 2*k - 1
}

func oneRightIndex(i int, k int) int {
	return i + 2*k
}

func main() {
	cSum()
}
