package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	a, b := readI(), readI()
	ar, br := make([]rune, b), make([]rune, a)
	for i := 0; i < b; i++ {
		ar[i] = rune(a) + '0'
	}
	for i := 0; i < a; i++ {
		br[i] = rune(b) + '0'
	}

	as, bs := string(ar), string(br)
	if as > bs {
		fmt.Println(bs)
	} else {
		fmt.Println(as)
	}

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
