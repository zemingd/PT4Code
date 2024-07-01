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

	n := nextStr()

	a := int(n[0] - '0')
	b := int(n[1] - '0')
	c := int(n[2] - '0')
	d := int(n[3] - '0')

	calc(a, b, c, d, "+++")
	calc(a, b, c, d, "++-")
	calc(a, b, c, d, "+-+")
	calc(a, b, c, d, "+--")
	calc(a, b, c, d, "-++")
	calc(a, b, c, d, "-+-")
	calc(a, b, c, d, "--+")
	calc(a, b, c, d, "---")

}
func calc(a int, b int, c int, d int, s string) {
	ans := a
	if s[0] == '+' {
		ans += b
	} else {
		ans -= b
	}
	if s[1] == '+' {
		ans += c
	} else {
		ans -= c
	}
	if s[2] == '+' {
		ans += d
	} else {
		ans -= d
	}
	if ans == 7 {
		fmt.Printf("%d%c%d%c%d%c%d=7", a, s[0], b, s[1], c, s[2], d)
		os.Exit(0)
	}
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
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
