package main

import (
	"fmt"
	"strconv"
)

func main() {
	var inputStr string
	fmt.Scan(&inputStr)

	input, _ := strconv.Atoi(inputStr)

	a := input / 1000
	input = input % 1000
	b := input / 100
	input = input % 100
	c := input / 10
	input = input % 10
	d := input

	oj, ok, ol := 1, 1, 1
	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			oj = oj * -1
			for k := 0; k < 2; k++ {
				ok = ok * -1
				for l := 0; l < 2; l++ {
					ol = ol * -1
					ans := a + b*oj + c*ok + d*ol
					if ans == 7 {
						fmt.Printf("%d%s%d%s%d%s%d=7\n", a, f(oj), b, f(ok), c, f(ol), d)
						return
					}
				}
			}
		}
	}
}

func f(v int) string {
	if v >= 0 {
		return "+"
	} else {
		return "-"
	}
}
