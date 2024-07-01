package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
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
	s := readLine()

	d1 := 0
	d2 := 0

	for i, c := range strings.Split(s, "") {
		if strconv.Itoa(i%2) == c {
			d1 += 1
		} else {
			d2 += 1
		}
	}

	if d1 > d2 {
		fmt.Printf("%d", d2)
	} else {
		fmt.Printf("%d", d1)
	}
}

