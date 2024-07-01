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

	m := n-1
	sumE := make([]int, n)
	sumW := make([]int, n)
	ss := strings.Split(s,"")

	if ss[m] == "E" {
		sumE[m] = 1
	}else{
		sumE[m] = 0
	}
	if ss[0] == "W" {
		sumW[0] = 1
	}else{
		sumW[0] = 0
	}
	for r := 1; r < len(ss); r++ {
		if ss[m-r] == "E" {
			sumE[m-r] = sumE[n-r]+1
		}else{
			sumE[m-r] = sumE[n-r]
		}

		if ss[r] == "W" {
			sumW[r] = sumW[r-1]+1
		}else{
			sumW[r] = sumW[r-1]
		}
	}

	if answer > sumW[m] {
		answer = sumW[m]
	}
	if answer > sumE[0] {
		answer = sumE[0]
	}
	for r:=1; r+1 < n; r++ {
		tmp := sumE[r+1] + sumW[r-1]
		if answer > tmp {
			answer = tmp
		}
	}

	fmt.Print(answer)
}