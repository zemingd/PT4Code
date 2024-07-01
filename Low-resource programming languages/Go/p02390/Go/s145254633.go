package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	num, _ := strconv.Atoi(stdin.Text())
	h := num / 3600
	m := (num - (h * 3600)) / 60
	s := num - (h * 3600) - (m * 60)
	fmt.Printf("%v:%v:%v\n", h, m, s)
}

