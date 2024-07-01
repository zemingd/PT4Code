package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func find(arr []int, n int) bool {
	for _, v := range arr {
		if v == n {
			return true
		}
	}
	return false
}

func f(n int) int {
	if n%2 == 0 {
		return n / 2
	} else {
		return 3*n + 1
	}
}

func solve(s int) int {
	hist := []int{s}
	n := s
	c := 1
	for {
		n = f(n)
		c++

		if find(hist, n) {
			return c
		}

		hist = append(hist, n)
	}
}

func main() {
	in := read()
	n, _ := strconv.Atoi(in)
	ans := solve(n)
	fmt.Println(ans)
}