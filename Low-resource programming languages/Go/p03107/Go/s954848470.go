package main

import (
	"bufio"
	"fmt"
	"os"
)

var rdr = bufio.NewReaderSize(os.Stdin, 400000)

func readLine() string {
	buf := make([]byte, 0, 400000)
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

func delete(s []rune, i int) []rune {
	s = s[:i]
	n := make([]rune, len(s))
	copy(n, s)
	return n
}
func main() {
	s := readLine()
	ar := []rune{}
	result := 0
	for _, v := range s {
		if len(ar) > 0 && ar[len(ar)-1] != v {
			ar = delete(ar, len(ar)-1)
			result += 2
		} else {
			ar = append(ar, v)
		}
	}
	fmt.Println(result)
}
