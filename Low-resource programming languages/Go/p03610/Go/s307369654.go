package main

import (
	"bufio"
	"fmt"
	"os"
)

var reader = bufio.NewReader(os.Stdin)

func nextLine() string {
	var buf, line []byte
	isPrefix := true
	var err error
	for isPrefix {
		buf, isPrefix, err = reader.ReadLine()
		if err != nil {
			panic(err)
		}
		line = append(line, buf...)
	}
	return string(line)
}
func main() {
	s := nextLine()
	l := len(s)/2 + 1
	if len(s)%2 == 0 {
		l = len(s) / 2
	}
	bs := make([]byte, l)
	for i := 0; i < len(s); i += 2 {
		bs[i/2] = s[i]
	}
	fmt.Println(string(bs))
}
