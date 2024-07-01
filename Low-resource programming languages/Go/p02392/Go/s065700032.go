package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var a, b, c int
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		line := scanner.Text()
		strs := strings.Split(line, " ")
		a, _ = strconv.Atoi(strs[0])
		b, _ = strconv.Atoi(strs[1])
		c, _ = strconv.Atoi(strs[2])
	}

	var output string
	if a < b && b < c {
		output = "Yes"
	} else {
		output = "No"
	}

	fmt.Printf("%v\n", output)
}

