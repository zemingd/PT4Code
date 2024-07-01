package main

import (
	"bufio"
	"os"
	"strings"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text := stdin.Text()
	strs := strings.Fields(text)
	a, err := strconv.Atoi(strs[0])
	if err != nil {
		panic(err)
	}
	b, err := strconv.Atoi(strs[1])
	if err != nil {
		panic(err)
	}
	result := a * b
	if result % 2 == 1 {
		println("Yes")
	} else {
		println("No")
	}
}