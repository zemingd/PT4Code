package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	s := next()
	zeros, ones := 0, 0

	for _, r := range s {
		switch r {
		case '0':
			zeros++
		case '1':
			ones++
		}
	}

	min := zeros
	if min > ones {
		min = ones
	}
	fmt.Println(min*2)
}
