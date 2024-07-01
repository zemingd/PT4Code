package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func nextLine() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	return sc.Text()
}

func main() {
	line := nextLine()
	abs := strings.Split(line, " ")
	a, _ := strconv.Atoi(abs[0])
	b, _ := strconv.Atoi(abs[1])

	if a <= 5 {
		fmt.Print("0")
	} else if a <= 12 {
		fmt.Print(b / 2)
	} else {
		fmt.Print(b)
	}
}
