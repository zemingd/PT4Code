package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//Util
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func absFloat64(a float64) float64 {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func minFloat64(a, b float64) float64 {
	if a > b {
		return b
	} else {
		return a
	}
}

func str2Int(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

//Main
var sc = bufio.NewScanner(os.Stdin)

const MAX = 1000000000000000000

var A, B string

func main() {
	sc.Split(bufio.ScanWords)
	A, B = nextStr(), nextStr()

	if A == "0" || B == "0.00" {
		fmt.Println(0)
		return
	}

	var ans, b, c int64
	a, _ := strconv.ParseInt(A, 10, 64)
	ans = 0
	b = 100
	var r float64
	r = 0.0
	for i := len(B) - 1; i >= 0; i-- {
		if string(B[i]) == "." {
			continue
		}
		c, _ = strconv.ParseInt(string(B[i]), 10, 64)
		if c != 0 {
			diff := int64(a * c / b)
			r += float64(a)*float64(c)/float64(b) - float64(diff)
			ans += diff
		}
		b /= 10
	}

	fmt.Println(int64(float64(ans) + r))

}
