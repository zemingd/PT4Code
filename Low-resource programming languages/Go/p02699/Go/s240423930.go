package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var scanner = bufio.NewScanner(os.Stdin)
	var s string
	if scanner.Scan() {
		s = scanner.Text()
	}
	slice := strings.Split(s, " ")
	a, _ := strconv.Atoi(slice[0])
	b, _ := strconv.Atoi(slice[1])

	if a > b {
		fmt.Println("safe")
	} else {
		fmt.Println("unsafe")
	}

}
