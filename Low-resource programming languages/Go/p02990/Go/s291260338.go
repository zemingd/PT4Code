package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000)

func readLine() string {
	buf := make([]byte, 0, 10000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

var c [4005][4005]int

func init() {
	c[0][0] = 1
	for i := 0; i <= 4000; i++ {
		for j := 0; j <= i; j++ {
			c[i+1][j] += c[i][j]
			c[i+1][j+1] += c[i][j]
		}
	}
}

func comb(n, k int) int {
	if k < 0 {
		return 0
	}
	return c[n][k]
}

func f2(n, k int) int {
	return comb(n+k-1, k-1)
}

func f(n, k int) int {
	if n < k {
		return 0
	}
	if n == 0 && k == 0 {
		return 1
	}
	if k < 1 {
		return 0
	}
	return f2(n-k, k)
}

func main() {
	ins := strings.Split(readLine(), " ")
	n, _ := strconv.Atoi(ins[0])
	k, _ := strconv.Atoi(ins[1])
	d := math.Pow10(9) + 7

	for i := 1; i <= k; i++ {
		b := f(k, i)
		r := 0

		r += f(n-k, i-1)
		r += f(n-k, i)
		r += f(n-k, i)
		r += f(n-k, i+1)

		fmt.Println((b * r) % int(d))
	}
}
