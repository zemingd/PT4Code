package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b := nextInt(), nextInt()

	if b > a {
		a, b = b, a
	}
	lcm := a * b / gcd(a, b)
	fmt.Println(lcm)
}

func gcd(a int, b int) int {
	for {
		r := a % b
		if r == 0 {
			return b
		}
		a = b
		b = r
	}
}
