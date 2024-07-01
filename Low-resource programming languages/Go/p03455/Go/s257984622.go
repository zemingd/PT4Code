package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan() {
		in := stdin.Text()
		out, _ := do(in)
		fmt.Println(out)
	}
}

func do(in string) (string, error) {
	s := strings.Split(in, " ")
	n0, err := strconv.Atoi(s[0])
	if err != nil {
		return "", err
	}
	n1, err := strconv.Atoi(s[1])
	if err != nil {
		return "", err
	}

	if n0%2 == 0 {
		return "EVEN", nil
	}

	if n1%2 == 0 {
		return "EVEN", nil
	}
	return "ODD", nil
}
