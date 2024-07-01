package main

import (
	"bufio"
	"fmt"
	"os"
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
	_, S := readLine(), readLine()

	fmt.Printf("%d\n", ABC098C(S))
}

// ABC098C ...
func ABC098C(S string) int {
	l, r := 0, 0
	for i := 0; i < len(S); i++ {
		if S[i] == 'E' {
			r++
		}
	}
	res := l + r

	for leader := 1; leader < len(S); leader++ {
		if S[leader-1] == 'W' {
			l++
		}
		if S[leader] == 'E' {
			r--
		}
		if l+r < res {
			res = l + r
		}
	}

	return res
}
