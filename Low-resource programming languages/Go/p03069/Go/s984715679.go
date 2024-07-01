package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 2*10*10*10*10*10 + 10
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

func check() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	s := scanStr(sc)

	countB := 0
	countW := 0

	next := s[0]

	for i := 0; i < n-1; i++ {
		if s[i] == '#' && s[i+1] == '.' {
			countW++
		}
		if next == '#' && s[i+1] == '.' {
			countB++
			next = '#'
		} else if next == '#' && s[i+1] == '#' {
			next = '#'
		} else {
			next = s[i+1]
		}
	}

	ret := 0
	if countB < countW {
		ret = countB
	} else {
		ret = countW
	}

	fmt.Printf("%d\n", ret)

}

func main() {
	check()
}
