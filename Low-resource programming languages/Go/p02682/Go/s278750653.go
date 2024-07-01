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
	lines := inputs(1, rdr)

	lineInt := DivideConvertInt(lines[0], 4)

	A := lineInt[0]
	B := lineInt[1]
	//C := lineInt[2]
	K := lineInt[3]

	if K <= A {
		fmt.Println(K)
		return
	}

	remaining := K - A

	if remaining <= B {
		fmt.Println(A)
		return
	}

	remaining = remaining - B

	fmt.Println(A - remaining)

}
