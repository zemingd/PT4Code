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
		if int(target+1) == 122 {
			baseStrRune[idx] = target - 1
		} else {
			baseStrRune[idx] = target + 1
		}
		idx = idx + 1
		res++
	}
	res = res * input2
	if baseStrRune[0] == baseStrRune[len(baseStrRune)-1] {
		res = res + input2 - 1
	}
	fmt.Print(res)
}
