// 自分（自分含む）より右側にある直近のLと自分（自分含む）より左側にある直近のRの位置を表す配列を作る
// 10^100は偶数なので距離の偶奇で判別
package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	runes := []rune(s)
	LindiciesOfRight, RindiciesOfLeft := make([]int, len(runes)), make([]int, len(runes))
	LindiciesOfRight[len(runes)-1] = len(runes) - 1
	for i := 1; i < len(runes); i++ {
		now := string(runes[i])
		if now == "R" {
			RindiciesOfLeft[i] = i
		} else {
			RindiciesOfLeft[i] = RindiciesOfLeft[i-1]
		}
	}
	for i := len(runes) - 2; i >= 0; i-- {
		now := string(runes[i])
		if now == "L" {
			LindiciesOfRight[i] = i
		} else {
			LindiciesOfRight[i] = LindiciesOfRight[i+1]
		}
	}
	ans := make([]int, len(runes))
	for i := 0; i < len(runes); i++ {
		now := string(runes[i])
		if now == "R" {
			dist := LindiciesOfRight[i] - i
			if dist%2 == 0 {
				ans[LindiciesOfRight[i]]++
			} else {
				ans[LindiciesOfRight[i]-1]++
			}
		} else {
			dist := i - RindiciesOfLeft[i]
			if dist%2 == 0 {
				ans[RindiciesOfLeft[i]]++
			} else {
				ans[RindiciesOfLeft[i]+1]++
			}
		}
	}
	for i, a := range ans {
		fmt.Print(a)
		if i == len(ans)-1 {
			fmt.Println()
		} else {
			fmt.Print(" ")
		}
	}
}
