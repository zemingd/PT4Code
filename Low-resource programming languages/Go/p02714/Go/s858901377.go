package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	var n int
	var s string

	if sc.Scan() {
		n, _ = strconv.Atoi(sc.Text())
	}

	if sc.Scan() {
		s = sc.Text()
	}

	var rgb, r, g, b int
	for i := 0; i < n; i++ {
		switch s[i] {
		case 'R':
			r++
		case 'G':
			g++
		case 'B':
			b++
		}
	}
	rgb = r * g * b

	for j := 0; j < n; j++ {
		for i := 0; i < j; i++ {
			k := j + (j - i)
			if k < n {
				if s[i] == s[j] {
					continue
				}
				if s[i] == s[k] {
					continue
				}
				if s[j] == s[k] {
					continue
				}
				rgb--
			}
		}
	}

	fmt.Print(rgb)
}
