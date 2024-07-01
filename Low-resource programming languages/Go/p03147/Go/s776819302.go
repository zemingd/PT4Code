package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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

func solve(h []int) int {
	// fmt.Println(h)
	c := 0
	for {
		s := -1
		for i, n := range h {
			if n != 0 {
				s = i
				break
			}
		}
		if s == -1 {
			return c
		}

		i := s + 1
		for {
			if i >= len(h) || h[i] == 0 {
				break
			}
			i++
		}
		e := i

		for i := s; i < e; i++ {
			h[i]--
		}
		c++
		// fmt.Println(s, e, h)
	}
}

func main() {
	N, _ := strconv.Atoi(read())

	h := make([]int, N)
	chars := strings.Split(read(), " ")
	for i := 0; i < N; i++ {
		h[i], _ = strconv.Atoi(chars[i])
	}

	ans := solve(h)
	fmt.Println(ans)
}
