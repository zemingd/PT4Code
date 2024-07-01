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
			ans[i-right] = (left+1)/2 + right/2
			ans[i-right+1] = (right+1)/2 + left/2
			break
		}
		if S[i] == 'L' && S[i+1] == 'R' {
			ans[i-right] = (left+1)/2 + right/2
			ans[i-right+1] = (right+1)/2 + left/2
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

// func gather(len int, leftLen int) {
// 	res := []int{}
// 	left := 0
// 	right := 0
// 	for i := 1; i <= len; i++ {
// 		res = append(res, 0)
// 		if i <= leftLen {
// 			if i%2 == leftLen%2 {
// 				left++
// 			} else {
// 				right++
// 			}
// 		} else {
// 			if (i-leftLen)%2 == 1 {
// 				right++
// 			} else {
// 				left++
// 			}
// 		}
// 	}
// 	res[leftLen-1] = left
// 	res[leftLen] = right
// 	for i := 0; i < len; i++ {
// 		fmt.Printf("%d", res[i])
// 		if i != len-1 {
// 			fmt.Print(" ")
// 		}
// 	}
// }
