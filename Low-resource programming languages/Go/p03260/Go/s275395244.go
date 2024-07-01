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
	var input string
	if sc.Scan() {
		input = sc.Text()
	}
	item := strings.Split(input, " ")
	a, _ := strconv.ParseInt(item[0], 10, 64)
	b, _ := strconv.ParseInt(item[1], 10, 64)
	if (a*b)%2 == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
