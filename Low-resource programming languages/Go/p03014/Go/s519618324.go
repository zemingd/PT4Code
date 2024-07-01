package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func get_int(sc *bufio.Scanner) int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func get_string(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var h, w int
	sc := wordScanner()
	h = get_int(sc)
	w = get_int(sc)
	ss := make([]string, h)
	for i := range ss {
		ss[i] = get_string(sc)
	}

	xss := make([][]int, h)
	for i := range xss {
		xss[i] = make([]int, w)
	}

	for i := 0; i < h; i++ {
		from := 0
		for from < w {
			if ss[i][from] == '#' {
				from++
			} else {
				to := from
				for to < w && ss[i][to] != '#' {
					to++
				}
				for j := from; j < to; j++ {
					xss[i][j] = to - from
				}
				from = to
			}
		}
	}

	for j := 0; j < w; j++ {
		from := 0
		for from < h {
			if ss[from][j] == '#' {
				from++
			} else {
				to := from
				for to < h && ss[to][j] != '#' {
					to++
				}
				for i := from; i < to; i++ {
					xss[i][j] += to - from
				}
				from = to
			}
		}
	}

	ans := 0
	for _, xs := range xss {
		for _, x := range xs {
			if ans < x {
				ans = x
			}
		}
	}
	fmt.Println(ans - 1)
}
