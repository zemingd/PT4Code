package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	BufferSize = 10*10*10*10*10 + 10
)

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}

	return sc.Text()
}

func getRev(before byte) byte {
	if before == '0' {
		return '1'
	}
	return '0'
}

func check() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	s := scanStr(sc)

	var count int
	prev := s[0]
	for i := 1; i < len(s)-1; i++ {
		if prev == s[i] {
			prev = getRev(s[i])
			count++
		} else {
			prev = s[i]
		}
	}

	fmt.Printf("%d\n", count)
}

func main() {
	check()
}
