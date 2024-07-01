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

	s := nextStr()

	if strings.Index(s, "RRR") != -1 {
		fmt.Println(3)
		return
	}
	if strings.Index(s, "RR") != -1 {
		fmt.Println(2)
		return
	}
	if strings.Index(s, "R") != -1 {
		fmt.Println(1)
		return
	}
	fmt.Println(0)
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
