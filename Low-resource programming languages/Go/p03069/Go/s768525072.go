package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000)

func readLine() string {
	buf := make([]byte, 0, 10000)
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
	_ = readLine()
	s := strings.Split(readLine(), "")

	var count int
	var bcount int

	for i := 0; i < len(s); i++ {
		if s[i] == "#" {
			bcount++
		}
	}

	for i := 0; i < len(s); i++ {
		if i == len(s)-1 {
			break
		}
		if s[i] == "#" {
			if s[i+1] == "." {
				s[i+1] = "#"
				count++
			}
		}
	}

	fmt.Println(math.Min(float64(count), float64(bcount)))
}
