package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	m  = make(map[int]bool)
	a  int
	x  int
	ok bool
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()

	for sc.Scan() {
		a, _ = strconv.Atoi(sc.Text())
		m[a] = !m[a]
	}

	count := 0
	for _, v := range m {
		if v {
			count++
		}
	}
	fmt.Println(count)
}
