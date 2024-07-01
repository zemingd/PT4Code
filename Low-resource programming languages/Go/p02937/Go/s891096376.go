package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func naive(s, t string) int {
	S := ""
	for i := 0; i < len(t); i++ {
		S += s
	}
	cur := 0
	for _, c := range t {
		for cur < len(S) && uint8(c) != S[cur] {
			cur++
		}
		if cur == len(S) {
			return -1
		}
		cur++

	}
	return cur
}


func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush()
	s := next()
	t := next()
	fmt.Fprintln(out, naive(s, t))
}
