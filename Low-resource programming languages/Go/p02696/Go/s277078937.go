package main

import (
	"bufio"
	"fmt"
	"math"
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

	tmp := strings.Split(line0[0], " ")
	A, _ := strconv.Atoi(tmp[0])
	B, _ := strconv.Atoi(tmp[1])
	N, _ := strconv.Atoi(tmp[2])

	x := int(math.Min(float64(B-1), float64(N)))

	ans := A * x / B

	fmt.Println(ans)
}
