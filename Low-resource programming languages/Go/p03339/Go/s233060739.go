package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	maxSize := 300000 * 2
	buf := make([]byte, maxSize)
	sc.Buffer(buf, maxSize)
	n := scanLineInt(sc)
	s := scanLineStr(sc)

	var count int
	for i := 0; i < n; i++ {
		if s[i] == 'E' {
			count++
		}
	}

	min := count
	for i := 0; i < n; i++ {
		if s[i] == 'E' {
			count--
		}
		if i > 0 && s[i-1] == 'W' {
			count++
		}
		if count < min {
			min = count
		}
	}
	fmt.Println(min)
}

func scanLineStr(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanLineInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
