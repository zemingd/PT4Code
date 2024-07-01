package main

import (
	"fmt"
	"os"
	"strconv"
)

var Cal = []int64{1, -1}

func main() {
	var num string
	fmt.Scanf("%s\n", &num)
	fmt.Println(f(num, 0, ""))
}

func f(s string, sum int64, ss string) (int64, string) {
	if s == "" {
		return sum, ss
	}
	var av int64
	var bs, ws string
	for _, v := range Cal {
		if ss == "" {
			bs = s[:1]
		} else {
			bs = ss + toCalc(v) + s[:1]
		}
		av, ws = f(s[1:], sum+toNum(s[:1])*v, bs)
		if av == 7 {
			fmt.Println(ws + "=7")
			os.Exit(0)
		}
	}
	return sum, ws
}

func toCalc(n int64) string {
	if n == 1 {
		return "+"
	}
	return "-"
}

func toNum(s string) int64 {
	if s == "" {
		return 0
	}
	n, _ := strconv.ParseInt(s, 10, 64)
	return n
}
