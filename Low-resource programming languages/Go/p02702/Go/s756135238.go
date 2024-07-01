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
	m := map[int]int{}
	m[0]++
	for i := len(slice) - 1; i >= 0; i-- {
		q, _ := strconv.Atoi(slice[i])
		s += s2 * q
		m[s%2019]++
		s2 *= 10
		s2 %= 2019
	}
	ans := 0
	for _, v := range m {
		ans += v * (v - 1) / 2
	}
	fmt.Println(ans)

}
