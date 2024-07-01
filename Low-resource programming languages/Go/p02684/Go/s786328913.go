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

	line0Int := DivideConvertInt(line0[0], 2)

	N := line0Int[0]
	K := line0Int[1]

	line1 := inputs(1, rdr)

	A := DivideConvertInt(line1[0], N)

	check := []int{}
	ord := make([]int, N+1)

	for i := 0; i < N+1; i++ {
		ord[i] = -1
	}

	i := 1

	for {
		if ord[i] == -1 {
			ord[i] = len(check)
			check = append(check, i)
			i = A[i-1]
		} else {
			break
		}
	}

	cycle := len(check) - ord[i]

	l := ord[i]

	if K < l {
		fmt.Println(check[K])
	} else {
		K -= l
		K %= cycle
		fmt.Println(check[l+K])
	}

}
