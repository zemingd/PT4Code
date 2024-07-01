package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var line string
	if sc.Scan() {
		line = sc.Text()
	}

	slice := strings.Split(line, " ")
	a, _ := strconv.Atoi(slice[0])
	b, _ := strconv.Atoi(slice[1])
	c, _ := strconv.Atoi(slice[2])

	nokori := c - (a - b)
	if nokori < 0 {
		println(0)
	} else {
		println(nokori)
	}
}
