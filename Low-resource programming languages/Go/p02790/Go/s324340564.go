package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	a := nextInt()
	b := nextInt()
	astr := strings.Repeat(fmt.Sprintf("%d", a), b)
	bstr := strings.Repeat(fmt.Sprintf("%d", b), a)

	if astr < bstr {
		fmt.Println(astr)
	} else {
		fmt.Println(bstr)
	}
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // default=64*1024
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
