package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc = bufio.NewScanner(os.Stdin)

	input1 := nextLine()
	input2, _ := strconv.Atoi(nextLine())

	baseStrRune := []rune(input1)
	idx := 1
	res := 0

	for idx < len(baseStrRune) {
		left := baseStrRune[idx-1]
		target := baseStrRune[idx]

		if left != target {
			idx = idx + 1
			continue
		}
		baseStrRune[idx] = target + 1
		idx = idx + 1
		res++
	}
	fmt.Print(res * input2)
}
