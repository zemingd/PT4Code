package main

import (
	"fmt"
	"io"
	"os"
	"strings"
)

func solve(w io.Writer, r io.Reader) {
	var N int
	var S string
	fmt.Fscan(r, &N, &S)
	S = strings.TrimLeft(S, ".")
	S = strings.TrimRight(S, "#")

	var black, white int
	var stones []int
	for i := 0; i < len(S); i++ {
		if S[i] == '#' {
			black++
			if white > 0 {
				stones = append(stones, white)
				white = 0
			}
		} else {
			white++
			if black > 0 {
				stones = append(stones, black)
				black = 0
			}
		}
	}
	if white > 0 {
		stones = append(stones, white)
	}

	ans := 0
	for i := 0; i < len(stones); i += 2 {
		c := 0
		for j := i + 1; j < len(stones); j += 2 {
			c += stones[j]
			if stones[i] < c {
				break
			}
		}
		if stones[i] < c {
			ans += stones[i]
		} else {
			ans += c
			break
		}
	}
	fmt.Fprintln(w, ans)
}

func main() {
	solve(os.Stdout, os.Stdin)
}
