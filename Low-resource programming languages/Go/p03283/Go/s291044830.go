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

	var n, m, q, l, r int

	fmt.Sscan(getNextLine(scanner), &n, &m, &q)
	counter := make([][]int, n+1)
	for i := 0; i <= n; i++ {
		counter[i] = make([]int, n+1)
	}
	for i := 0; i < m; i++ {
		fmt.Sscan(getNextLine(scanner), &l, &r)
		counter[l][r]++
	}
	for i := 1; i <= n; i++ {
		for j := 1; j <= n; j++ {
			counter[i][j] += counter[i][j-1]
		}
	}
	for i := 1; i <= n; i++ {
		for j := 1; j <= n; j++ {
			counter[i][j] += counter[i-1][j]
		}
	}
	for i := 0; i < q; i++ {
		fmt.Sscan(getNextLine(scanner), &l, &r)
		fmt.Println(counter[r][r] - counter[l-1][r] - counter[r][l-1] + counter[l-1][l-1])
	}
}
