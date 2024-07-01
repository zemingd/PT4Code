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

	ss := strings.Split(s, " ")
	A, _ := strconv.Atoi(ss[0])
	B, _ := strconv.Atoi(ss[1])

	var result int
	if result < A+B {
		result = A + B
	}

	if result < A-B {
		result = A - B
	}

	if result < A*B {
		result = A * B
	}

	fmt.Println(result)
}
