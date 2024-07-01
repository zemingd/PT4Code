package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	l := make([]int, n)
	for i := 0; sc.Scan(); i++ {
		m, _ := strconv.Atoi(sc.Text())
		l[i] = m
	}

	odds := make(map[int]int)
	for i := 0; i < n; i += 2 {
		odds[l[i]]++
	}
	evens := make(map[int]int)
	for i := 1; i < n; i += 2 {
		evens[l[i]]++
	}

	ans := 0

	maxok := 0
	maxv := 0
	for k, v := range odds {
		if v > maxv {
			maxok = k
			maxv = v
		}
	}
	ans += n/2 - maxv

	maxek := 0
	maxv = 0
	for k, v := range evens {
		if v > maxv {
			maxek = k
			maxv = v
		}
	}
	ans += n/2 - maxv

	if maxok == maxek {
		ans = maxv
	}

	fmt.Println(ans)
}
