package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func reverseStr(s string) string {

	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for D - String Formation
	var S string
	fmt.Scan(&S)
	ans := make([]string, 0)
	ans = append(ans, S)

	var Q int
	fmt.Scan(&Q)

	sc.Split(bufio.ScanWords)

	var T int
	var F int
	var C string
	var flag int
	for i := 0; i < Q; i++ {
		T = nextInt()
		if T == 1 {
			if flag == 0 {
				flag++
			} else {
				flag--
			}
		} else {
			F, C = nextInt(), nextStr()
			if (F == 1 && flag == 0) || (F == 2 && flag == 1) {
				temp := make([]string, 0)
				temp = append(temp, C)
				ans = append(temp, ans...)
			} else {
				ans = append(ans, C)
			}
		}
	}

	S = strings.Join(ans, "")

	if flag == 1 {
		S = reverseStr(S)
	}

	fmt.Println(S)

}
