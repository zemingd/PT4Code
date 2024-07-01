package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	args := strings.Split(sc.Text(), " ")
	a, _ := strconv.Atoi(args[0])
	b, _ := strconv.Atoi(args[1])

	if a < b {
		a ^= b
		b ^= a
		a ^= b
	}

	diff := a - b

	switch {
	case diff >= 2:
		fmt.Print(a + (a - 1))
	default:
		fmt.Print(a + b)
	}
}