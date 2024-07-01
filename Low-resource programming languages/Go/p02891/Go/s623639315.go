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
		leadIdx := 0
		endIdx := 0
		lead = 1
		end = 1
		for baseStrRune[leadIdx] == baseStrRune[leadIdx+1] {
			lead++
			leadIdx++
		}
		for baseStrRune[length-1-endIdx] == baseStrRune[length-1-endIdx-1] {
			endIdx++
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
