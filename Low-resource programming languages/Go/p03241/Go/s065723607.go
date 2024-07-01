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

func gcd(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

func main() {
	n := loadint()
	m := loadint()
	result := 1
	a := 1
	for true {
		b := m - (a * (n - 1))
		if b < 1 {
			break
		}
		x := gcd(a, b)
		if x > result {
			result = x
		}
		a++
	}
	fmt.Println(result)
}
