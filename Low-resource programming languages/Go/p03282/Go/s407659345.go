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

	var k int64

	s := getNextLine(scanner)
	fmt.Sscan(getNextLine(scanner), &k)

	for i := 0; i < len(s); i++ {
		if s[i] != '1' {
			fmt.Println(fmt.Sprintf("%c", s[i]))
			return
		}
		if int64(i) == k-1 {
			fmt.Println("1")
			return
		}
	}
	fmt.Println("1")
}
