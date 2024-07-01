// RとLが隣り合う場所に閉じ込められる 10^100は偶数
// 左端からみていったときに現れるLはそこより左側かつそこ以前の直近のLより右にいるRを巻き込む（巻き込むとは

package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)
	SS := make([]string, len(S))
	for i, c := range []rune(S) {
		SS[i] = string(c)
	}
	Ls := make([]int, len(S))
	Rs := make([]int, len(S))
	preLidx, preRidx := 0, len(S)-1
	for i := 0; i < len(S); i++ {
		if SS[i] == "L" {
			dist := i - preLidx
			if dist%2 == 0 {
				Ls[i] += dist / 2
				Ls[i-1] += dist / 2
			} else {
				// RRRLだと奇数番目のRは偶数回後はi-1にいる
				Ls[i] += dist / 2
				Ls[i-1] += dist/2 + 1
			}
			preLidx = i + 1
		}
	}
	for i := len(S) - 1; i >= 0; i-- {
		if SS[i] == "R" {
			dist := preRidx - i
			if dist%2 == 0 {
				Rs[i] += dist / 2
				Rs[i+1] += dist / 2
			} else {
				Rs[i] += dist / 2
				Rs[i+1] += dist/2 + 1
			}
			preRidx = i - 1
		}
	}
	for i := 0; i < len(S); i++ {
		if i < len(S)-1 {
			fmt.Printf("%d ", Ls[i]+Rs[i])
		} else {
			fmt.Println(Ls[i] + Rs[i])
		}
	}
}
