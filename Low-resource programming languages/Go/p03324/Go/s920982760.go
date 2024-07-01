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
	switch D {
	case 0:
		a = N
	case 1:
		a = N * 100
	case 2:
		a = N * (100 * 100)
	}
	fmt.Print(a)
}
