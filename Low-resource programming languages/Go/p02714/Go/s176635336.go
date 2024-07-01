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
	line := inputs(2)

	n, _ := strconv.Atoi(line[0])

	ans := 0

	strRGB := line[1]
	for i := 0; i < (n - 2); i++ {
		for j := (i + 1); j < (n - 1); j++ {
			for k := (j + 1); k < n; k++ {
				if strRGB[i] != strRGB[j] &&
					strRGB[j] != strRGB[k] &&
					strRGB[k] != strRGB[i] {
					if (k - j) != (j - i) {
						ans++
					}
				}
			}
		}
	}

	fmt.Println(ans)
}
