package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	a := getStdin()
	if 'a' <= a[0] && a[0] <= 'z' {
		fmt.Printf("a\n")
	} else {
		fmt.Printf("A\n")
	}
}

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*1)

func getStdin() string {
	return readLine()
}
func readLine() string {
	buf := make([]byte, 0, 0)
	for {
		l, p, _ := sc.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
