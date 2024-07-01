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

func main() {
	n := loadint()
	t := loadint()
	a := loadint()
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = loadint()
	}
	nearIndex := 0
	nearDiff := 100000000000000
	for i := 0; i < n; i++ {
		diff := a*1000 - (t*1000 - h[i]*6)
		if diff < 0 {
			diff = -diff
		}
		if diff < nearDiff {
			nearDiff = diff
			nearIndex = i
		}
	}
	fmt.Println(nearIndex + 1)
}
