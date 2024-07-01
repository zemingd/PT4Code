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

func inputs(lines int) []string {
	var strSlice []string

	rdr := bufio.NewReaderSize(os.Stdin, maxBufsize)

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
	lines := inputs(2)

	line0 := strings.Split(lines[0], " ")
	N, _ := strconv.Atoi(line0[0])

	line1 := strings.Split(lines[1], " ")

	sums := 0
	for _, v := range line1 {
		a, _ := strconv.Atoi(v)

		sums += a
	}

	if sums > N {
		fmt.Println("-1")
	} else {
		fmt.Println(N - sums)
	}
}
