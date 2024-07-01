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

	var sc []string

	for i := 0; i < len(s); i++ {
		sc = append(sc, s[i])
	}
	var count int
	var wcount int

	for i := len(sc) - 1; i > 0; i-- {
		if i == 0 {
			break
		}
		if sc[i] == "." {
			if sc[i-1] == "#" {
				sc[i-1] = "."
				wcount++
			}
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

	fmt.Println(math.Min(float64(count), float64(wcount)))
}
