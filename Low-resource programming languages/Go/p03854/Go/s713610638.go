package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	stdin = bufio.NewScanner(os.Stdin)
	t     = []string{"dream", "dreamer", "erase", "eraser"}
)

func main() {
	stdin.Scan()
	s := reverseString(stdin.Text())
	for i, st := range t {
		t[i] = reverseString(st)
	}
	var can = true
	for i := 0; i < len(s); {
		var can2 = false
		for j := 0; j < 4; j++ {
			d := t[j]
			if substring(s, i, i+len(d)) == d {
				i += len(d)
				can2 = true
				break
			}
		}
		if !can2 {
			can = false
			break
		}
	}
	if can {
		fmt.Println("YES")
		return
	}
	fmt.Println("NO")
}

func substring(s string, start, end int) string {
	var l int
	if end < len(s) {
		l = end
	} else {
		l = len(s)
	}
	return s[start:l]
}

func reverseString(s string) string {
	bytes := []byte(s)
	for i, j := 0, len(bytes)-1; i < j; i, j = i+1, j-1 {
		tmp := bytes[i]
		bytes[i] = bytes[j]
		bytes[j] = tmp
	}
	return string(bytes)
}