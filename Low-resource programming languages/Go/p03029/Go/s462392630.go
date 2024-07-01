package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text := strings.Split(stdin.Text(), " ")
	out := Run(text)
	fmt.Println(out)
}

func Run(data []string) string {
	var (
		a, _ = strconv.ParseInt(data[0], 10, 64)
		p, _ = strconv.ParseInt(data[1], 10, 64)
	)
	ret := ((a * 3) + p) / 2
	return strconv.FormatInt(ret, 10)
}
