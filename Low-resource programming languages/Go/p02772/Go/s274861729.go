package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := readI()
	for i := 0; i < n; i++ {
		a := readI()
		if a%2 == 0 {
			if !(a%3 == 0 || a%5 == 0) {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("APPROVED")
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
