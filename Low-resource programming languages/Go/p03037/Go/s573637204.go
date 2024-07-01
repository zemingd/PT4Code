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
	mins := make([]int, m+1)
	mins[m] = n
	for i := 0; i < m; i++ {
		lr := getIntList(scanner)
		ll[i] = lr[0]
		rr[i] = lr[1]
	}
	for i := m - 1; i >= 0; i-- {
		mins[i] = minint(mins[i+1], ll[i])
	}
	l := 1
	r := n
	for i := 0; i < m; i++ {
		l = maxint(l, mins[i])
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
