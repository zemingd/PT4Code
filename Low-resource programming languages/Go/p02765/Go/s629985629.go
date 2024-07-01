package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	var input = make([]string, 2)
	var n, r int
	if scanner.Scan() {
		input = strings.Split(scanner.Text(), " ")
		n, _ = strconv.Atoi(input[0])
		r, _ = strconv.Atoi(input[1])
	}

	if n < 10 {
		fmt.Println(r + (100*(10-n)))
	} else {
		fmt.Println(r)

	}

}
