package main

import (
	"fmt"
)

func main() {
	var num int
	fmt.Scanf("%d", &num)

	var str string
	fmt.Scanf("%s", &str)

	// num = 39
	// str = "RBRBGRBGGBBRRGBBRRRBGGBRBGBRBGBRBBBGBBB"

	fmt.Println(calc(num, str))
}

func calc(num int, str string) int {
	var ret int
	var a, b, c int
	var sp []string = split(str)
	for a = 0; a < num-2; a++ {
		for b = a + 1; b < num-1; b++ {
			for c = b + 1; c < num; c++ {
				if jouken(a, b, c, sp) {
					ret = ret + 1
				}
			}
		}
	}
	return ret
}

func jouken(i, j, k int, sp []string) bool {
	if j-i == k-j {
		return false
	}
	if sp[i] == sp[j] {
		return false
	}
	if sp[i] == sp[k] {
		return false
	}
	if sp[j] == sp[k] {
		return false
	}

	return true
}

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}