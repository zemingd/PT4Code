package main

import (
	"bufio"
	"fmt"
	"os"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

// 1行が長すぎるやつはこっち
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

func delete(s []int, i int) []int {
	s = append(s[:i], s[i+1:]...)
	n := make([]int, len(s))
	copy(n, s)
	return n
}
func main() {
	s := readLine()
	ar := []int{}
	result := 0
	for _, v := range s {
		if len(ar) > 0 && ar[len(ar)-1] != int(v) {
			ar = delete(ar, len(ar)-1)
			result += 2
		} else {
			ar = append(ar, int(v))
		}
	}
	fmt.Println(result)
}
