package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	readerSize = 100000
	rdr        = bufio.NewReaderSize(os.Stdin, readerSize)
	ts         = []string{"dream", "dreamer", "erase", "eraser"}
	s          = ""
)

func main() {
	s = readLine()
	if len(s) == 0 {
		fmt.Println("NO")
		return
	}

	if rec(0) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

func rec(i int) bool {
	if i == len(s) {
		return true
	}
	for _, t := range ts {
		if len(s[i:]) >= len(t) && s[i:i+len(t)] == t {
			if rec(i + len(t)) {
				return true
			}
		}
	}
	return false
}

func readLine() string {
	buf := make([]byte, 0, readerSize)
	for {
		l, p, e := rdr.ReadLine()
		pnc(e)
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
