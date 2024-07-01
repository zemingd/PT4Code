package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	S := read()
	prev := "R"
	length := 1
	leftLength := 0
	for i := 1; i < len(S); i++ {
		cur := string(S[i])
		if prev == "L" && cur == "R" {
			gather(length, leftLength)
			fmt.Print(" ")
			length = 0
			leftLength = 0
		}
		if prev == "R" && cur == "L" {
			leftLength = length
		}
		length++
		if i == len(S)-1 {
			gather(length, leftLength)
			fmt.Print("\n")
		}
		prev = cur
	}
}

func gather(len int, leftLen int) {
	res := []int{}
	left := 0
	right := 0
	for i := 1; i <= len; i++ {
		res = append(res, 0)
		if i <= leftLen {
			if i%2 == leftLen%2 {
				left++
			} else {
				right++
			}
		} else {
			if (i-leftLen)%2 == 1 {
				right++
			} else {
				left++
			}
		}
	}
	res[leftLen-1] = left
	res[leftLen] = right
	for i := 0; i < len; i++ {
		fmt.Printf("%d", res[i])
		if i != len-1 {
			fmt.Print(" ")
		}
	}
}
