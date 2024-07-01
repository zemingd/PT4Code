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
	left := 0
	right := 0
	ans := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		if S[i] == 'R' {
			left++
		} else {
			right++
		}
		if i == len(S)-1 {
			ans[i-right] = (right+1)/2 + left/2
			ans[i-right+1] = (left+1)/2 + right/2
			break
		}
		if S[i] == 'L' && S[i+1] == 'R' {
			ans[i-right] = (right+1)/2 + left/2
			ans[i-right+1] = (left+1)/2 + right/2
			left = 0
			right = 0
		}
	}
	for i, val := range ans {
		fmt.Print(val)
		if i == len(ans)-1 {
			fmt.Print("\n")
		} else {
			fmt.Print(" ")
		}
	}
}

