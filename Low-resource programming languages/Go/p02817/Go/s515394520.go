package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	inputs := scanJointStrings()
	fmt.Println(inputs)
}

func scanJointStrings() string {
	sc.Scan()
	sstring := strings.Split(sc.Text(), " ")

	s := sstring[1] + sstring[0]
	return s
}