package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

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
	s := strings.Split(readLine(), "")

	var count int
	for i := 0; i < len(s); i++ {
		if len(s)%2 == 0 {
			if s[0] != s[i] {
				count += 2
			}
		} else {
			if s[0] != s[i] && len(s)-i > 1 {
				count += 2
			}
		}
	}

	fmt.Println(count)
}
