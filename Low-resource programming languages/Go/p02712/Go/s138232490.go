package main

import (
	"bufio"
	"fmt"
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

func main() {
	line1 := inputs(1)

	n, _ := strconv.Atoi(line1[0])

	var sum int64

	for i := 1; i < (n + 1); i++ {
		if i%3 == 0 || i%5 == 0 {
			continue
		} else {
			sum += int64(i)
		}
	}

	fmt.Println(sum)
}