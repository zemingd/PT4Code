package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func gcd(x, y int) int {
	if x < y {
		x, y = y, x
	}
	for y > 0 {
		r := x % y
		x = y
		y = r
	}
	return x
}

func lcm(x, y int) int {
	return x * y / gcd(x, y)
}

func main() {
	a, _ := strconv.Atoi(input())
	b, _ := strconv.Atoi(input())
	fmt.Println(lcm(a, b))
}
