package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod = 1000000007

func main() {
	stdin.Split(bufio.ScanWords)
	X := getStdin()
	Y := getStdin()

	remainder1 := (2*Y - X)
	remainder2 := (2*X - Y)

	if remainder1 >= 0 && remainder2 >= 0 && remainder1%3 == 0 && remainder2%3 == 0 {
		Goal := factorial(remainder1/3, remainder2/3)
		fmt.Println(int(Goal))
	} else {
		fmt.Println(0)
	}
}

var stdin = bufio.NewScanner(os.Stdin)

func getStdin() int {
	stdin.Scan()
	if err := stdin.Err(); err != nil {
		fmt.Fprintln(os.Stderr, err)
	}
	line, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return line
}

func getStd() string {
	stdin.Scan()
	if err := stdin.Err(); err != nil {
		fmt.Fprintln(os.Stderr, err)
	}
	line := stdin.Text()
	return line
}

//Combination:b+cCc
func factorial(b int, c int) int {
	var sum, csum, bsum = 1, 1, 1
	for j := 0; j < c; j++ {
		csum = (csum * (c - j)) % mod
		bsum = (bsum * (b + c - j)) % mod
	}
	sum = div(bsum, csum)
	return sum
}

func mul(a int, b int) int {
	return ((a % mod) * (b % mod)) % mod
}

func div(a int, b int) int {
	return mul(a, power(b, mod-2))
}

func power(x int, y int) int {
	if y == 0 {
		return 1
	}
	if y == 1 {
		return x % mod
	}
	a := power(x, y/2) % mod
	if y%2 == 0 {
		b := a * a % mod
		return b
	}
	b := ((a * a) % mod) * x % mod
	return b
}
