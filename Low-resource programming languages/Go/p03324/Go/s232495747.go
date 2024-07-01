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
	s := strings.Split(sc.Text(), " ")
	D, _ := strconv.Atoi(s[0])
	N, _ := strconv.Atoi(s[1])
	a := 0
	if D == 0 {
		a = N
	} else if D == 1 {
		a = N * 100
	} else if D == 2 {
		a = N * 100 * 100
	}
	fmt.Print(a)
}