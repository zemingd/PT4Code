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

	var n int
	fmt.Sscan(getNextLine(scanner), &n)
	s := getNextLine(scanner)
	sums := make([]int, n+1)
	for i := 0; i < n; i++ {
		sums[i+1] = sums[i]
		if s[i] == 'E' {
			sums[i+1]++
		}
	}
	min := n
	for i := 1; i <= n; i++ {
		sum := i - 1 - sums[i-1] + (sums[n] - sums[i])
		if min > sum {
			min = sum
		}
	}

	fmt.Println(min)
}
