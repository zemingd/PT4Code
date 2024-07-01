package main

import (
	"bufio"
	"fmt"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func min(a, b int) int {
	if a <= b {
		return a
	}
	return b
}

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	wCnt, bCnt, wkBCnt := 0, 0, 0
	for _, o := range s {
		if o == '.' {
			wCnt++
			bCnt += wkBCnt
			wkBCnt = 0
		} else {
			wkBCnt++
		}
	}

	fmt.Println(min(wCnt, bCnt))
}
