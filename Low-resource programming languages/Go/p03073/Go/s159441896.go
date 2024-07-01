package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	s, _ := reader.ReadString('\n')
	s = strings.TrimSuffix(s, "\n")

	l := len(s)
	sol1 := make([]byte, l)
	for i := 0; i < l; i++ {
		if i % 2 == 0 {
			sol1[i] = '0'
		} else {
			sol1[i] = '1'
		}
	}
	sol2 := make([]byte, l)
	for i := 0; i < l; i++ {
		if i % 2 == 1 {
			sol2[i] = '0'
		} else {
			sol2[i] = '1'
		}
	}
	c1 := dist(s, string(sol1))
	c2 := dist(s, string(sol2))
	if c1 < c2 {
		fmt.Println(c1)
	} else {
		fmt.Println(c2)
	}

}

func dist(s, t string) int {
	count := 0
	if len(s) != len(t) {
		panic("shit")
	}
	for i := range s {
		if s[i] != t[i] {
			count++
		}
	}
	return count
}