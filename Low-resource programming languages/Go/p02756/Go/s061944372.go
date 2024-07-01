package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	var buf = make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)

	s := next()
	q := nextInt()

	d := 1
	for i := 0; i < q; i++ {
		t := nextInt()

		switch t {
		case 1:
			d *= -1
		case 2:
			f := nextInt()
			c := next()

			if d == -1 {
				if f == 1 {
					f = 2
				} else {
					f = 1
				}
			}

			if f == 1 {
				s = c + s
			} else {
				s = s + c
			}
		}
	}

	if d == -1 {
		s = reverse(s)
	}

	fmt.Println(s)
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

const (
	initialBufSize = 10000
	maxBufSize     = 10000000
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
