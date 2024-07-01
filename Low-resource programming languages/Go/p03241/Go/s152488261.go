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

func solve(n, m int) int {
	var ds []int
	for i := 1; i*i <= m; i++ {
		if m%i == 0 {
			ds = append(ds, i)
			ds = append(ds, m/i)
		}
	}
	result := 0
	for _, d := range ds {
		if m >= n*d {
			if d > result {
				result = d
			}
		}
	}
	return result
}

func main() {
	n := loadint()
	m := loadint()
	result := solve(n, m)
	fmt.Println(result)
}
