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

func main() {
	rdr := bufio.NewReaderSize(os.Stdin, maxBufsize)
	line0 := inputs(1, rdr)

	tmp0 := strings.Split(line0[0], " ")
	N, _ := strconv.Atoi(tmp0[0])
	K, _ := strconv.Atoi(tmp0[1])

	lineD := inputs(2*K, rdr)

	A := make([]int, N+1)

	count := 0

	for i := 0; i < K; i++ {
		tmpAi := strings.Split(lineD[2*i], " ")

		for j := 0; j < len(tmpAi); j++ {
			Aij, _ := strconv.Atoi(tmpAi[j])

			if A[Aij] == 0 {
				A[Aij]++
			}
		}
	}

	for i := 1; i < N+1; i++ {
		if A[i] == 0 {
			count++
		}
	}
	fmt.Println(count)
}
