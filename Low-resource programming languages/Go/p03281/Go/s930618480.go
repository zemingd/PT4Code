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
	result := 0
	for i := 1; i <= n; i += 2 {
		d := 0
		for j := 1; j <= i; j++ {
			if i%j == 0 {
				d++
			}
		}
		if d == 8 {
			result++
		}
	}
	fmt.Println(result)
}
