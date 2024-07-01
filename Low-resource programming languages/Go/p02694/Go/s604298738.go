package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
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

func account(a int, interest float64) int {
	all := float64(a) * interest

	return int(math.Trunc(all))
}

func main() {
	lines := inputs(1)

	X, _ := strconv.Atoi(lines[0])

	interest := 1.01
	acc := 100
	year := 0
	for {
		year++
		acc = account(acc, interest)

		if acc >= X {
			break
		}

	}

	fmt.Println(year)

}
