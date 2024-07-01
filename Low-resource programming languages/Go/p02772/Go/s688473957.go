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
	var number int
	if scanner.Scan() {
		number, _ = strconv.Atoi(scanner.Text())
	}
	var numbers = make([]string, number)
	if scanner.Scan() {
		numbers = strings.Split(scanner.Text(), " ")
	}

	var evens = make([]int, 0)
	for _, num := range (numbers) {
		intnum, _ := strconv.Atoi(num)
		if intnum%2 == 0 {
			evens = append(evens, intnum)
		}
	}

	for _, even := range (evens) {
		if even % 5 == 0 || even % 3 ==0{
			continue
		} else {
			fmt.Println("DENIED")
			os.Exit(0)
		}
	}
	fmt.Println("APPROVED")
}
