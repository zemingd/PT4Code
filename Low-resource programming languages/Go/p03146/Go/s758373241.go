package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var s int
	fmt.Scan(&s)
	m := map[int]bool{}
	i := 1
	for {
		i++
		if s%2 == 1 {
			s = 3*s + 1
		} else {
			s = s / 2
		}
		_, ok := m[s]
		if ok {
			break
		}
		m[s] = true
		//fmt.Println(s)

	}

	fmt.Fprintln(wtr, i)
	_ = wtr.Flush()
}
