package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var scanner = bufio.NewScanner(os.Stdin)
	var p string
	if scanner.Scan() {
		p = scanner.Text()
	}
	slice := strings.Split(p, "")
	s := 0
	s2 := 1
	m := make([]int, 2019)
	m[0]++
	ans := 0
	for i := len(slice) - 1; i >= 0; i-- {
		q, _ := strconv.Atoi(slice[i])
		s += s2 * q
		q = s % 2019
		ans += m[q]
		m[q]++

		s2 *= 10
		s2 %= 2019

	}

	fmt.Println(ans)

}
