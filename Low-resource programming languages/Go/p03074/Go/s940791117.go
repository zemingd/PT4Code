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

	nk := getIntList(scanner)
	n := nk[0]
	k := nk[1]
	s := getNextLine(scanner)
	var prev byte
	prev = '1'
	var switched []int
	switched = append(switched, 0)
	for i := 0; i < n; i++ {
		if prev != s[i] {
			switched = append(switched, i)
			prev = s[i]
		}
	}
	switched = append(switched, n)
	max := 0
	l := len(switched)
	for i := 0; i < l-1; i += 2 {
		last := l - 1
		if i+2*k+1 <= l-1 {
			last = i + 2*k + 1
		}
		if max < switched[last]-(switched[i]) {
			max = switched[last] - (switched[i])
		}
	}
	fmt.Println(max)
}
