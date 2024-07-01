package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	inputArray, _ := toIntArray(splitInput(scanner, " "))
	n := inputArray[0]
	st := splitInput(scanner, " ")
	s := st[0]
	t := st[1]

	for i := 0; i < n; i++ {
		fmt.Printf("%s", s[i:i+1])
		fmt.Printf("%s", t[i:i+1])
	}
	fmt.Println()
}

func splitInput(scanner *bufio.Scanner, sep string) []string {
	scanner.Scan()
	return strings.Split(scanner.Text(), sep)
}

func toIntArray(str []string) ([]int, error) {
	length := len(str)
	resVal := make([]int, length)
	var err error
	for i := 0; i < length; i++ {
		resVal[i], err = strconv.Atoi(str[i])
		if err != nil {
			return nil, err
		}
	}
	return resVal, nil
}
