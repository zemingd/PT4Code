package main

import (
	"bufio"
	"fmt"
	"os"
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

	for _, v := range line1[0] {
		if string(v) == "7" {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")

}