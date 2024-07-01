package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	s := strings.Split(sc.Text(), " ")
	a := make([]int, len(s))
	for r := range s {
		a[r], _ = strconv.Atoi(s[r])
	}

	c := 0
	for {
		ch := false
		for r := range a {
			if (a[r]%2) == 0 && a[r] != 0 && !ch {
				ch = true
				a[r] = a[r] / 2
				break
			}
		}
		if ch {
			c++
		} else {
			break
		}
	}
	fmt.Print(c)
}