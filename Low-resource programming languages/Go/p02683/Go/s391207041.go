package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	firstLineStr := getNextLine()
	firstLineSliceInt := getSliceIntByString(firstLineStr)
	n := firstLineSliceInt[0]
	lines := getLines(n)

	fmt.Println(checker(firstLineSliceInt, lines))
}

func checker(firstLineSliceInt []int, lines []string) int {

	m := firstLineSliceInt[1]
	x := firstLineSliceInt[2]

	count := make([]int, m)
	countX := 0

	for _, line := range lines {
		ok := true
		numbers := getSliceIntByString(line)

		for i := 0; i < m; i++ {
			count[i] += numbers[i+1]
			if count[i] < x {
				ok = false
			}
		}

		countX += numbers[0]
		if ok {
			break
		}
	}

	return countX
}

func getNextLine() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	return sc.Text()
}

func getSliceIntByString(s string) []int {
	var n []int
	for _, f := range strings.Fields(s) {
		i, err := strconv.Atoi(f)
		if err == nil {
			n = append(n, i)
		}
	}
	return n
}

func getLines(n int) []string {
	var lines []string
	sc := bufio.NewScanner(os.Stdin)
	for i := 0; i < n; i++ {
		sc.Scan()
		t := sc.Text()
		lines = append(lines, t)
	}
	return lines
}
