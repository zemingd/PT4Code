package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	N int
	A [3][3]int
	C [3][3]int
)

func main() {
	readVariables()
	for i := 0; i < N; i++ {
		call(nextInt())
	}
	answer := "No"
	for i := 0; i < 3; i++ {
		if row(i) {
			answer = "Yes"
		}
		if col(i) {
			answer = "Yes"
		}
	}
	if dg() {
		answer = "Yes"
	}
	fmt.Println(answer)
}

func row(i int) bool {
	cnt := 0
	for j := 0; j < 3; j++ {
		cnt += C[i][j]
	}
	return cnt == 3
}

func col(j int) bool {
	cnt := 0
	for i := 0; i < 3; i++ {
		cnt += C[i][j]
	}
	return cnt == 3
}

func dg() bool {
	x, y := 0, 0
	for i := 0; i < 3; i++ {
		x += C[i][i]
		y += C[i][2-i]
	}
	return x == 3 || y == 3
}

func call(b int) {
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			if A[i][j] == b {
				C[i][j] = 1
			}
		}
	}
}

func readVariables() {
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			A[i][j] = nextInt()
		}
	}
	N = nextInt()
}

/* Template */

var scanner *bufio.Scanner

func init() {
	Max := 1001001
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]byte, 0, Max), Max)
	scanner.Split(bufio.ScanWords)
}

//nextInt converts next token from stdin and returns integer value.
//nextInt panics when conversion into an integer fails.
func nextInt() int {
	if !scanner.Scan() {
		panic("No more token.")
	}
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic("nextInt(): cannot convert to int: " + scanner.Text())
	}
	return num
}

func nextStr() string {
	if !scanner.Scan() {
		panic("No more token.")
	}
	return scanner.Text()
}

// MinInt returns minimum argument
func MinInt(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

//MaxInt returns maximum argument
func MaxInt(x, y int) int {
	if x < y {
		return y
	} else {
		return x
	}
}

//AbsInt returns |x| for x
func AbsInt(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

//ModPow calculates integer power with modulo operation
//if modulo <= 1, it powers w/o module operation
//if base < 0, return value might be negative too.
func ModPow(base, exponent, modulo int) (result int) {
	result = 1
	for exponent > 0 {
		if exponent%2 == 1 {
			result *= base
			if modulo > 1 {
				result %= modulo
			}
		}
		base *= base
		if modulo > 1 {
			base %= modulo
		}
		exponent /= 2
	}
	return
}

//Gcd
func Gcd(vals ...int) (result int) {
	if len(vals) == 0 {
		return
	}
	result = vals[0]
	for i := 1; i < len(vals); i++ {
		result = gcd(result, vals[i])
	}
	return
}

func gcd(x, y int) int {
	x, y = AbsInt(x), AbsInt(y)
	for y > 0 {
		x, y = y, x%y
	}
	return x
}

//Lcm
func Lcm(vals ...int) (result int) {
	if len(vals) == 0 {
		return
	}
	result = vals[0]
	for i := 1; i < len(vals); i++ {
		result = lcm(result, vals[i])
	}
	return
}

func lcm(x, y int) int {
	return x * y / gcd(x, y)
}
