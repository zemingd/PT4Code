package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	arr := scanArrayInt()
	a, b := arr[0], arr[1]
	tap := 1
	if a >= b {
		fmt.Println(tap)
		return
	}
	consent := a
	for consent < b {
		tap++
		consent = (consent - 1) + a
	}
	fmt.Println(tap)
}

func scanArrayInt() []int {
	var ret = []int{}
	stdin.Scan()
	for _, s := range strings.Split(stdin.Text(), " ") {
		i, _ := strconv.Atoi(s)
		ret = append(ret, i)
	}
	return ret
}