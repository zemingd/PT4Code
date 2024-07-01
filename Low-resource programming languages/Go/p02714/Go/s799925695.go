package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	var n int
	var s string

	if sc.Scan() {
		n, _ = strconv.Atoi(sc.Text())
	}

	if sc.Scan() {
		s = sc.Text()
	}

	var cnt int
	for k := 0; k < n; k++ {
		for j := 0; j < k; j++ {
			for i := 0; i < j; i++ {
				if j-i == k-j {
					continue
				}
				if s[i] == s[j] {
					continue
				}
				if s[j] == s[k] {
					continue
				}
				if s[k] == s[i] {
					continue
				}
				cnt++
			}
		}
	}
	fmt.Print(cnt)
}
