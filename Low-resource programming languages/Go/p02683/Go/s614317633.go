package main

import (
	"bufio"
	"fmt"
	"os"
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

func main() {
	rdr := bufio.NewReaderSize(os.Stdin, maxBufsize)
	line0 := inputs(1, rdr)

	line0Int := DivideConvertInt(line0[0], 3)

	N := line0Int[0]
	M := line0Int[1]
	X := line0Int[2]

	A := make([][]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = make([]int, M)

		line := inputs(1, rdr)

		lineInt := DivideConvertInt(line[0], M+1)

		C[i] = lineInt[0]

		for j := 1; j < M+1; j++ {
			A[i][j-1] = lineInt[j]
		}

	}

	ans := -1
	for bits := 0; bits < (1 << uint(N)); bits++ {
		score := make([]int, M)

		counts := 0
		for i := 0; i < N; i++ {
			if (bits>>uint(i))&1 == 1 {
				for j := 0; j < M; j++ {
					score[j] += A[i][j]
				}
				counts += C[i]
			}
		}

		flag := true

		for j := 0; j < M; j++ {
			if score[j] < X {
				flag = false
			}
		}

		if flag {
			if ans == -1 || ans > counts {
				ans = counts
			}
		}
	}

	fmt.Println(ans)
}
