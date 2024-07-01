package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanInit()

	s := nextStr()
	t := nextStr()

	if strings.Index(s, t) != -1 {
		fmt.Println(0)
		return
	}

	matchmax := 0
	for i := 0; i < len(s)-len(t)+1; i++ {
		nowmatch := 0
		for j := 0; j < len(t); j++ {
			if s[i+j] == t[j] {
				nowmatch++
			}

		}
		matchmax = max(matchmax, nowmatch)
	}

	fmt.Println(len(t) - matchmax)

}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// ---- readfunc
var sc = bufio.NewScanner(os.Stdin)

func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
