package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	s := nextStr()

	cnt10 := 0
	cnt01 := 0
	for i := 0; i < len(s); i++ {
		if (i+1)%2 == 1 {
			if s[i] == '1' {
				cnt01++
			} else {
				cnt10++
			}
		} else {
			if s[i] == '1' {
				cnt10++
			} else {
				cnt01++
			}
		}
	}

	fmt.Println(min(cnt10, cnt01))

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

// ---- readfunc
func scanInit() {
	const cap = 100 * 1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
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
