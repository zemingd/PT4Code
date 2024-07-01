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

	stdin.Scan()
	ab := strings.Split(stdin.Text(), " ")

	a, _ := strconv.Atoi(ab[0])
	b, _ := strconv.Atoi(ab[1])

	var aFlag bool
	if a % 2 == 0 {
		aFlag = true
	} else {
		aFlag = false
	}

	var bFlag bool
	if b % 2 == 0 {
		bFlag = true
	} else {
		bFlag = false
	}

	if aFlag || bFlag {
		fmt.Println("Even")
	} else {
		fmt.Println("Odd")
	}
}