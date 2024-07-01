package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 10 * 10 * 10 * 10 * 10 * 10 * 10
)

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}

	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	l := scanInt(sc)
	r := scanInt(sc)

	min := 2020
	for i := l; i < r-1; i++ {
		for j := l + 1; j < r; j++ {
			mod := (i * j) % 2019
			if mod < min {
				min = mod
			}
		}
	}

	fmt.Printf("%d\n", min)
}
