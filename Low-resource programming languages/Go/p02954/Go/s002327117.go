package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	n := len(s)
	m := make([]int, n)
	for i := 0; i < n-1; i++ {
		if s[i] == 'R' && s[i+1] == 'L' {
			//left side
			for j := i; j >= 0; j-- {
				if s[j] == 'L' {
					break
				} else if (j-i)%2 == 0 {
					m[i]++
				} else {
					m[i+1]++
				}
			}
			//right side
			for j := i + 1; j < n; j++ {
				if s[j] == 'R' {
					break
				} else if (j-i)%2 == 0 {
					m[i]++
				} else {
					m[i+1]++
				}
			}
		}
	}
	wr := bufio.NewWriter(os.Stdout)
	wr.WriteString(strconv.Itoa(m[0]))
	for i := 1; i < n; i++ {
		wr.WriteString(" " + strconv.Itoa(m[i]))
	}
	wr.WriteString("\n")
	wr.Flush()
}