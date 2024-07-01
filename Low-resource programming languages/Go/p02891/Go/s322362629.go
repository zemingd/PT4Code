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

	end := 0
	lead := 0
	length := len(baseStrRune)
	if baseStrRune[0] == baseStrRune[length-1] {
		idx := 0
		for baseStrRune[idx] == baseStrRune[idx+1] {
			lead++
		}
		for baseStrRune[length-1-idx] == baseStrRune[length-1-idx-1] {
			end++
		}
	}
	for idx < len(baseStrRune) {
		left := baseStrRune[idx-1]
		target := baseStrRune[idx]

		if left != target {
			idx = idx + 1
			continue
		}
		baseStrRune[idx] = 127
		idx = idx + 1
		res++
	}
	res = res * input2
	if lead != 0 && end != 0 {
		res = res - (lead/2+end/2-(lead+end)/2)*(input2-1)
	}
	fmt.Print(res)
}
