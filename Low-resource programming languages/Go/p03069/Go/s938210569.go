package main

import (
	"bufio"
	"fmt"
	"os"
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
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 10000)
	sc.Buffer(buf, 1000000)

	var n int
	fmt.Scan(&n)
	s := readLine(sc)

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
