package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	run()
}

func run() {
	setSpace()
	s := read()
	ymd := strings.Split(s, "/")
	ys, ms, ds := ymd[0], ymd[1], ymd[2]
	y, _ := strconv.Atoi(ys)
	if y < 2019 {
		fmt.Println("Heisei")
		return
	}
	m, _ := strconv.Atoi(ms)
	if m < 4 {
		fmt.Println("Heisei")
		return
	}
	d, _ := strconv.Atoi(ds)
	if d < 31 {
		fmt.Println("Heisei")
		return
	}
	fmt.Println("TBD")
}

// ------以下、ユーティリティ------

var sc = bufio.NewScanner(os.Stdin)

func setSpace() {
	sc.Split(bufio.ScanWords)
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readN() int {
	n, err := strconv.Atoi(read())
	if err != nil {
		panic(err)
	}
	return n
}
