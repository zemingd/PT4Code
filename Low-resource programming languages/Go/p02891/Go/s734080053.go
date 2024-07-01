package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func main() {
	sc.Split(bufio.ScanWords)

	s := []byte(getString())
	k := getInt()

	cnt := 0
	for i := 1; i < len(s); i++ {
		if s[i] == s[i-1] {
			s[i] = byte(0)
			cnt++
		}
	}
	x := 0
	if s[len(s)-1] != 0 && s[0] == s[len(s)-1] {
		x = 1
	}
	//out(cnt, x, k)
	out(cnt*k + x*(k-1))
}
