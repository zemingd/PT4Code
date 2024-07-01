package main

import (
	"bufio"
	"fmt"
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

	for i := 0; i < len(s); i++ {
		if s[i] == "#" {
			if i == len(s)-1 {
				break
			} else {
				if s[i+1] == "." {
					count++
				}
			}
		}
	}

	fmt.Println(count)
}
