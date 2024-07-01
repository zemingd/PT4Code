package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getNextLine(scanner *bufio.Reader) string {
	var buffer string
	for {
		line, isPrefix, _ := scanner.ReadLine()
		buffer += string(line)
		if isPrefix == false {
			break
		}
	}
	return buffer
}

func getIntList(scanner *bufio.Reader) []int {
	list := strings.Split(getNextLine(scanner), " ")
	l := len(list)
	result := make([]int, l)
	for i := 0; i < l; i++ {
		result[i], _ = strconv.Atoi(list[i])
	}
	return result
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := bufio.NewReader(fp)
	writer := bufio.NewWriter(os.Stdout)

	var n, m int
	fmt.Sscan(getNextLine(scanner), &n, &m)

	ll := make([]int, m)
	rr := make([]int, m)
	for i := 0; i < m; i++ {
		lr := getIntList(scanner)
		ll[i] = lr[0]
		rr[i] = lr[1]
	}
	l := ll[0]
	r := rr[0]
	for i := 0; i < m; i++ {
		l = maxint(l, ll[i])
		r = minint(r, rr[i])
	}
	fmt.Fprint(writer, r-l+1)
	writer.Flush()

}

func maxint(a int, b int) int {
	if a > b {
		return a
	}
	return b
}



func minint(a int, b int) int {
	if a < b {
		return a
	}
	return b
}