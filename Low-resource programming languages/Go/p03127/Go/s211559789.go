package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func rcvInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func gcd(a, b int) int {
	for b != 0 {
		c := a % b
		a, b = b, c
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	n := rcvInt()

	var x int
	y := rcvInt()
	for i := 1; i < n; i++ {
		x = rcvInt()
		y = gcd(x, y)
	}

	fmt.Println(y)
}
