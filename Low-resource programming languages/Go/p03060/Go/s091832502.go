package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {

	var n, m int
	var vi, ci []int
	fmt.Scanf("%d", &n)
	vs := nextLine()
	v := strings.Split(vs, " ")
	cs := nextLine()
	c := strings.Split(cs, " ")

	for i := 0; i <= len(v); i++ {
		vi[i], _ = strconv.Atoi(v[i])
		ci[i], _ = strconv.Atoi(c[i])
	}

	for i := 0; i <= n; i++ {

		if vi[i] > ci[i] {
			m += vi[i] - ci[i]
		}
	}
	fmt.Printf("%d", m)

}
