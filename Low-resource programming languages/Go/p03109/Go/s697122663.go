package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	line := nextLine()
	input := strings.Split(line, "/")
	a, _ := strconv.Atoi(input[0])
	b, _ := strconv.Atoi(input[1])
	// x, _ := strconv.Atoi(input[2])

	if a < 2019 {
		fmt.Println("Heisei")
	} else if a > 2019 {
		fmt.Println("TDB")
	} else {
		if b <= 4 {
			fmt.Println("Heisei")
		} else {
			fmt.Println("TDB")
		}
	}
}
