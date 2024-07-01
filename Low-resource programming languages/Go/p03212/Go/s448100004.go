package main

import (
	"fmt"
	"strconv"
)

func rec(n int) []string {
	if n == 0 {
		return []string{""}
	}

	ret := []string{}
	prev := rec(n - 1)
	for _, s := range filter(prev, func(s string) bool { return n-1 == len(s) }) {
		ret = append(ret, s+"7")
		ret = append(ret, s+"5")
		ret = append(ret, s+"3")
	}

	ret = append(ret, prev...)

	return ret
}

func filter(slice []string, f func(s string) bool) []string {
	ret := []string{}
	for _, s := range slice {
		if f(s) {
			ret = append(ret, s)
		}
	}
	return ret
}

func has753(s string) bool {
	var has7, has5, has3 bool
	for _, c := range s {
		if c == '7' {
			has7 = true
		} else if c == '5' {
			has5 = true
		} else if c == '3' {
			has3 = true
		}
	}
	return has7 && has5 && has3
}

func lessThan(n int) func(s string) bool {
	return func(s string) bool {
		val, _ := strconv.Atoi(s)
		return val <= n
	}
}

func main() {
	var N int
	fmt.Scan(&N)

	n := len(strconv.Itoa(N))
	ans := filter(filter(rec(n), lessThan(N)), has753)
	fmt.Println(len(ans))
}
