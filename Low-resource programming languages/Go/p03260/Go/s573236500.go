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
	tmp := strings.Split(input, " ")
	a, _ := strconv.Atoi(tmp[0])
	b, _ := strconv.Atoi(tmp[1])

	if (a*b)%2 == 0 {
		fmt.Print("No")
	} else {
		fmt.Print("Yes")
	}
}
