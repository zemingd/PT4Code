package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

const (
	maxBufsize = 1000000
)

func inputs(lines int, rdr *bufio.Reader) []string {
	var strSlice []string

	//rdr := bufio.NewReaderSize(os.Stdin, maxBufsize)

	for i := 0; i < lines; i++ {

		line := ReadLine(rdr)
		strSlice = append(strSlice, line)

	}

	return strSlice
}

// ReadLine is to read long line
func ReadLine(rdr *bufio.Reader) string {
	buf := make([]byte, 0, maxBufsize)
	for {
		l, p, e := rdr.ReadLine()

		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}

	return string(buf)
}

//DivideConvertInt is to divide and convert
func DivideConvertInt(line string, num int) []int {
	tmp := strings.Split(line, " ")

	intSlice := make([]int, num)

	for i := 0; i < num; i++ {
		intTmp, _ := strconv.Atoi(tmp[i])
		intSlice[i] = intTmp
	}

	return intSlice
}

func abs(a, b int) int {
	if (a - b) > 0 {
		return a - b
	} else {
		return b - a
	}
}

func main() {
	rdr := bufio.NewReaderSize(os.Stdin, maxBufsize)
	line0 := inputs(1, rdr)

	line0Int := DivideConvertInt(line0[0], 2)

	X := line0Int[0]
	N := line0Int[1]

	if N == 0 {
		fmt.Println(X)
		return
	}

	line1 := inputs(1, rdr)
	pn := DivideConvertInt(line1[0], N)

	absDiff := make([]int, N)
	dictNum := make(map[int][]int, N)
	for i := 0; i < N; i++ {
		absDiff[i] = abs(X, pn[i])
		dictNum[absDiff[i]] = append(dictNum[absDiff[i]], pn[i])
	}

	sort.Ints(absDiff)

	cntDiff := make([]int, 100)

	for i := 0; i < N; i++ {
		cntDiff[absDiff[i]]++
	}

	if cntDiff[0] == 0 {
		fmt.Println(X)
		return
	}

	for i := 1; i < N; i++ {
		if cntDiff[i] == 0 {
			fmt.Println(X - i)
			return
		} else if cntDiff[i] == 1 {
			if (X - i) == dictNum[i][0] {
				fmt.Println(X + i)
				return
			} else {
				fmt.Println(X - i)
				return
			}
		}
	}

	fmt.Println(X - absDiff[N-1] - 1)

}
