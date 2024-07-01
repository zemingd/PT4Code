package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	n := nextInt()

	m := make(map[int]bool)
	for i := 0; i < n; i++ {
		a := nextInt()
		if m[a] {
			m[a] = false
		} else {
			m[a] = true
		}
	}

	var cnt int
	for _, a := range m {
		if a {
			cnt++
		}
	}

	fmt.Println(cnt)
}
