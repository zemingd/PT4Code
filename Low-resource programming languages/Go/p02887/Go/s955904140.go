package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	r := bufio.NewReader(os.Stdin)

	ln, _, _ := r.ReadLine()
	n, _ := strconv.Atoi(string(ln))

	ln, _, _ = r.ReadLine()
	s := string(ln)

	prev := s[0]
	count := 1
	for i := 1; i < n; i++ {
		if s[i] != prev {
			count++
			prev = s[i]
		}
	}

	fmt.Println(count)
}
