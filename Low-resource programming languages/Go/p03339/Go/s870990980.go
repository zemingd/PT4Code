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

	result := count
	for i := 0; i < n; i++ {
		if s[i] == 'E' {
			count--
		}
		if i > 0 && s[i-1] == 'W' {
			count++
		}
		result = min(result, count)
	}
	fmt.Println(result)
}

func scanLineStr(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanLineInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
