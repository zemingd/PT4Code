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
	a := make([]int, N)
	for r := range s {
		a[r], _ = strconv.Atoi(s[r])
	}

	c := 0
	for r := range a {
		tmp := a[r]
		for (tmp % 2 == 0)&&(tmp != 0) {
			tmp = tmp / 2
			c++
		}
	}

	fmt.Print(c)
}