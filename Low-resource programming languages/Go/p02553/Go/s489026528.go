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
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	split := strings.Split(s, " ")
	a, _ := strconv.Atoi(split[0])
	b, _ := strconv.Atoi(split[1])
	c, _ := strconv.Atoi(split[2])
	d, _ := strconv.Atoi(split[3])

	max := a * c
	if a*d > max {
		max = a * d
	}
	if b*c > max {
		max = b * c
	}
	if b*d > max {
		max = b * d
	}

	fmt.Printf(strconv.Itoa(max))
}
