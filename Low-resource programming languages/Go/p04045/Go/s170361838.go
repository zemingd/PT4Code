package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func check(n int, hates []string) bool {
	s := strconv.Itoa(n)
	ss := strings.Split(s, "")
	for _, x := range ss {
		for _, hate := range hates {
			if x == hate {
				return false
			}
		}
	}
	return true
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	sc := bufio.NewScanner(os.Stdin)
	l := make([]string, k)
	sc.Scan()
	l = strings.Split(sc.Text(), " ")

	// ここから解
	r := n
	for {
		if check(r, l) {
			break
		}
		r++
	}
	fmt.Println(r)
}
