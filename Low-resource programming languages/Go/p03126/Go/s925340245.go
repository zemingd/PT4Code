package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func main() {
	// nm
	var nm string
	if sc.Scan() {
		nm = sc.Text()
	}
	slice := strings.Split(nm, " ")
	n, _ := strconv.Atoi(slice[0])
	m, _ := strconv.Atoi(slice[1])

	ma := make(map[int]int)
	for i := 0; i < m; i++ {
		ma[i+1] = 0
	}

	for i := 0; i < n; i++ {
		var str string
		if sc.Scan() {
			str = sc.Text()
		}
		s := strings.Split(str, " ")
		for i, v := range s {
			if i == 0 {
				continue
			}
			vint, _ := strconv.Atoi(v)
			ma[vint]++
		}
	}

	res := 0
	for _, v := range ma {
		if v == n {
			res++
		}
	}
	fmt.Println(res)
}