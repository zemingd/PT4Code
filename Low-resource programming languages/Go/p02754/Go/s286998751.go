package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var t string
	var s = bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	if s.Scan() {
		t = s.Text()
	}
	n, err := strconv.Atoi(t)
	if err != nil {
		return
	}

	if s.Scan() {
		t = s.Text()
	}
	a, err := strconv.Atoi(t)
	if err != nil {
		return
	}

	if s.Scan() {
		t = s.Text()
	}
	b, err := strconv.Atoi(t)
	if err != nil {
		return
	}

	if a == 0 {
		fmt.Println(0)
		return
	}

	if a > n {
		fmt.Println(n)
		return
	}

	var answer = 0

	var i int
	for i = 0; i < n; i += a + b {
		if i+a > n {
			answer += a - (i + a - n)
			break
		}
		answer += a
	}

	fmt.Println(answer)
}
