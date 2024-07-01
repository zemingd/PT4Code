package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()

	num, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	sc.Scan()
	//numRunes := []rune(sc.Text())
	numRunes := sc.Text()

	rem := 0
	//var pre rune
	var pre byte
	for i := 0; i < num; i++ {
		if numRunes[i] != pre {
			rem++
			pre = numRunes[i]
		}
	}
	fmt.Println(rem)
}