package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func readline() string {
	rdr := bufio.NewReaderSize(os.Stdin, 100)
	buf := make([]byte, 0, 100)
	for {
		l, p, _ := rdr.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	s := strings.Split(readline(), "")
	t := strings.Split(readline(), "")

	var cnt int
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			cnt++
		}
	}

	fmt.Println(cnt)
}
