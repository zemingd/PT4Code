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

	s := getNextLine(scanner)
	for op1 := -1; op1 <= 1; op1 += 2 {
		for op2 := -1; op2 <= 1; op2 += 2 {
			for op3 := -1; op3 <= 1; op3 += 2 {
				sum := int(s[0] - '0')
				sum += op1 * int(s[1]-'0')
				sum += op2 * int(s[2]-'0')
				sum += op3 * int(s[3]-'0')
				if sum == 7 {
					op := [3]rune{'+', '+', '+'}
					if op1 == -1 {
						op[0] = '-'
					}
					if op2 == -1 {
						op[1] = '-'
					}
					if op3 == -1 {
						op[2] = '-'
					}
					fmt.Printf("%c%c%c%c%c%c%c\n", s[0], op[0], s[1], op[1], s[2], op[2], s[3])
					return
				}
			}
		}
	}
}
