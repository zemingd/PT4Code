package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := readS()
	l := len(s)

	if s == reverseS(s) && s[:(l-1)/2] == reverseS(s[:(l-1)/2]) && s[(l+3)/2-1:] == reverseS(s[(l+3)/2-1:]) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func reverseS(s string) string {
	rs := []rune(s)
	for i := 0; i < len(s)/2; i++ {
		rs[i], rs[len(s)-1-i] = rs[len(s)-1-i], rs[i]
	}
	return string(rs)
}

/*-----------Input utils-----------*/

var sc = bufio.NewScanner(os.Stdin)

func init() {
	if len(os.Args) >= 2 {
		if os.Args[1] == "debug" {
			debug()
		}
	}
	const buf = 200100
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, buf), buf)
}

func debug() {
	testFile, err := os.Open("./test/sample-1.in")
	if err != nil {
		fmt.Fprintln(os.Stderr, "There is no testfile.")
		os.Exit(1)
	}
	sc = bufio.NewScanner(testFile)
}

func readS() string {
	sc.Scan()
	return sc.Text()
}

func readR() []rune {
	return []rune(readS())
}

func readI() int {
	i, _ := strconv.Atoi(readS())
	return i
}

func readF() float64 {
	f, _ := strconv.ParseFloat(readS(), 64)
	return f
}
