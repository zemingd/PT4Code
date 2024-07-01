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
	y := loadint()
	a, b, c := -1, -1, -1
EXIT_LABEL:
	for i := 0; i < n; i++ {
		for j := 0; j < n-i; j++ {
			k := n - i - j
			if i*10000+j*5000+k*1000 == y {
				a, b, c = i, j, k
				break EXIT_LABEL
			}
		}
	}
	fmt.Println(a, b, c)
}
