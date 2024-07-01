package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func water(l int, r int, h []int) []int {
	for i := l; i < r; i++ {
		h[i] -= 1
	}
	return h
}

func main() {
	var n int
	var s []string
	count := 0
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		nt := sc.Text()
		n, _ = strconv.Atoi(nt)
	}
	var h []int
	if sc.Scan() {
		s = strings.Split(sc.Text(), " ")
		for i := 0; i < len(s); i++ {
			hn, _ := strconv.Atoi(s[i])
			h = append(h, hn)
		}
	}

	index := 0
	for {
		l := -1
		r := len(h)
		for i := index; i < n; i++ {
			if l == -1 && h[i] != 0 {
				l = i
				index = i
				continue
			}
			if l != -1 && h[i] == 0 {
				r = i
				break
			}
		}

		if l == -1 {
			break
		}
		h = water(l, r, h)
		count += 1
	}
	fmt.Print(count)
}
