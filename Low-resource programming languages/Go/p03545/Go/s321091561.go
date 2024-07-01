package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)
	a, _ := strconv.Atoi(string(n[0]))
	b, _ := strconv.Atoi(string(n[1]))
	c, _ := strconv.Atoi(string(n[2]))
	d, _ := strconv.Atoi(string(n[3]))
	options := [][]bool{
		{true, false, false},
		{true, true, false},
		{true, true, true},
		{true, false, true},
		{false, true, true},
		{false, false, true},
		{false, true, false},
		{false, false, false},
	}
	for _, op := range options {
		total := a
		var op1, op2, op3 string
		if op[0] {
			total += b
			op1 = "+"
		} else {
			total -= b
			op1 = "-"
		}
		if op[1] {
			op2 = "+"
			total += c
		} else {
			op2 = "-"
			total -= c
		}
		if op[2] {
			op3 = "+"
			total += d
		} else {
			op3 = "-"
			total -= d
		}
		if total == 7 {
			fmt.Println(fmt.Sprintf("%d%s%d%s%d%s%d=7", a, op1, b, op2, c, op3, d))
			return
		}
	}
}
