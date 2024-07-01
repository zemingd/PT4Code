package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
)

func main() {
	var x, a int
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		line := sc.Text()
		arr := strings.Fields(line)
		x, _ = strconv.Atoi(arr[0])
		a, _ = strconv.Atoi(arr[1])
	}

	if x < a {
		println(0)
	} else {
		println(10)
	}
}
