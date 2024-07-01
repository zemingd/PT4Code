package main

import (
	"fmt"
	"strings"
)

func main(){
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	answer := n

	// 前処理
	sumE := []int{0}
	sumW := []int{0}
	ss := strings.Split(s,"")
	t := len(ss)
	for r := range ss {
		if ss[r] == "E" {
			sumW = append(sumW, sumW[r])
		}else{
			sumW = append(sumW, sumW[r]+1)
		}
		if ss[t-1-r] == "E" {
			sumE = append([]int{sumE[0]+1}, sumE...)
		}else{
			sumE = append([]int{sumE[0]}, sumE...)
		}
	}

	sumE = sumE[:(len(sumE)-1)]
	sumW = sumW[1:]

	if answer > sumW[n-1] {
		answer = sumW[n-1]
	}
	if answer > sumE[1] {
		answer = sumE[1]
	}
	for r:=1; r+1 < n; r++ {
		tmp := sumE[r+1] + sumW[r-1]
		if answer > tmp {
			answer = tmp
		}
	}

	fmt.Print(answer)
}