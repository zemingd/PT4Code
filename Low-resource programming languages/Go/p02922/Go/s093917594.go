package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
)

func main() {
	println(A())
}

func A() int {
	A, B := nextInt(), nextInt()
	out := 1
	ans := 0
	for out < B {
		out--
		out += A
		ans++
	}
	return ans
}

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(nextLine())
	return a
}
func ReadSeparateInt() (int, int) {
	s := nextLine()
	a, b := strings.Split(s, " ")[0], strings.Split(s, " ")[1]
	c, _ := strconv.Atoi(a)
	d, _ := strconv.Atoi(b)
	return c, d
}
