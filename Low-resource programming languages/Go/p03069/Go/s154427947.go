package main

import (
	"fmt"
	"io"
	"os"
)

func answer(reader io.Reader, writer io.Writer) {
	var n int
	var s string
	_, _ = fmt.Fscan(reader, &n)
	_, _ = fmt.Fscan(reader, &s)
	c1 := make([]int, n)
	c2 := make([]int, n)
	for i := 0; i < len(s); i++ {
		if string(s[i]) == "#" {
			if i == 0 {
				c1[0] = 1
			} else {
				c1[i] = c1[i-1] + 1
			}
		} else {
			if i == 0 {
				c1[0] = 0
			} else {
				c1[i] = c1[i-1]
			}
		}
		j := len(s) - i - 1
		if string(s[j]) == "." {
			if j == len(s)-1 {
				c2[j] = 1
			} else {
				c2[j] = c2[j+1] + 1
			}
		} else {
			if j == len(s)-1 {
				c2[j] = 0
			} else {
				c2[j] = c2[j+1]
			}
		}
	}
	v := c2[0]
	for i := 0; i < len(s)-1; i++ {
		r := c1[i] + c2[i+1]
		if r < v {
			v = r
		}
	}
	if c1[len(s)-1] < v {
		v = c1[len(s)-1]
	}
	_, _ = fmt.Fprintf(writer, "%d", v)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
