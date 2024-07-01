package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	return a
}

func main() {
	r := bufio.NewReader(os.Stdin)
	// w := bufio.NewWriter(os.Stdout)
	// defer w.Flush()
	// sc.Split(bufio.ScanWords)
	var s, t string
	fmt.Fscan(r, &s)
	fmt.Fscan(r, &t)

	ls := make([]int, 27)
	lt := make([]int, 27)

	for _, l := range s {
		ls[l-[]rune("a")[0]]++
	}
	ns := ""
	for i, l := range ls {
		ns += strings.Repeat(string(rune(i)+[]rune("a")[0]), l)
	}

	for _, l := range t {
		lt[26-(l-[]rune("a")[0])]++
	}
	nt := ""
	for i, l := range lt {
		nt += strings.Repeat(string(rune(26-i)+[]rune("a")[0]), l)
	}
	// fmt.Println(ns, nt)

	ans := "Draw"
	for i := 0; i < len(ns); i++ {
		if ns[i] == nt[i] {
			continue
		} else if ns[i] < nt[i] {
			ans = "Yes"
			break
		} else {
			ans = "No"
			break
		}
	}
	if ans == "Draw" {
		if len(ns) < len(nt) {
			ans = "Yes"
		} else {
			ans = "No"
		}
	}
	fmt.Println(ans)
}
