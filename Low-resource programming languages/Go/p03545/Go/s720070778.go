package main

import (
	"fmt"
)

func to_i(b byte) int {
	return int(b - "0"[0])
}

func calc(s string, op1, op2, op3 int) int {
	return to_i(s[0]) + op1*to_i(s[1]) + op2*to_i(s[2]) + op3*to_i(s[3])
}

func to_s(op int) string {
	if op == 1 {
		return "+"
	}
	return "-"
}

func to_ans(s string, op1, op2, op3 int) string {
	return s[0:1] + to_s(op1) + s[1:2] + to_s(op2) + s[2:3] + to_s(op3) + s[3:4] + "=7"
}

func main() {
	var s string
	fmt.Scanln(&s)
	sign := []int{1, -1}
	for _, op1 := range sign {
		for _, op2 := range sign {
			for _, op3 := range sign {
				if calc(s, op1, op2, op3) == 7 {
					fmt.Println(to_ans(s, op1, op2, op3))
					return
				}
			}
		}
	}
	fmt.Println()
}
