package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)

	sc.Scan()
	nm := strings.Split(sc.Text(), " ")
	n, _ := strconv.Atoi(nm[0])
	l := 1
	r := n
	m, _ := strconv.Atoi(nm[1])
	for i := 0; i < m; i++ {
		sc.Scan()
		lr := strings.Split(sc.Text(), " ")
		newL, _ := strconv.Atoi(lr[0])
		if l < newL {
			l = newL
		}
		newR, _ := strconv.Atoi(lr[1])
		if newR < r {
			r = newR
		}
	}
	res := r - l + 1
	if res < 0 {
		res = 0
	}
	fmt.Println(res)
}
