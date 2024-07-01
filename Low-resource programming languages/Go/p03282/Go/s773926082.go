package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	buffsize := 1000000
	buff := make([]byte, buffsize)
	sc.Buffer(buff, buffsize)
	sc.Split(bufio.ScanWords)
}

func loadint() (result int) {
	sc.Scan()
	result, _ = strconv.Atoi(sc.Text())
	return
}

func loadstr() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	k := loadstr()
	n := loadint()
	pos := 0
	ch := '1'
	for i, c := range k {
		if c != '1' {
			pos = i
			ch = c
			break
		}
	}
	if pos >= n {
		ch = '1'
	}
	fmt.Println(string(ch))
}
