package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)

	sc.Scan()
	S := sc.Text()
	sc.Scan()
	T := sc.Text()

	min := len(T)
	for i := 0; i+len(T) <= len(S); i++ {
		n := len(T) - Count(S[i:i+len(T)], T)
		if n < min {
			min = n
		}
	}

	fmt.Println(min)
}

func Count(s1, s2 string) int {
	n := 0
	for i := range s1 {
		if s1[i] == s2[i] {
			n++
		}
	}
	return n
}
