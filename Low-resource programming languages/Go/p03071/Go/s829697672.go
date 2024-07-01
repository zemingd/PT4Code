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

	ints := strToIntSlice(scanLine(scanner));

	var coinNum int
	if ints[0] < ints[1] {
		coinNum = ints[1] * 2 - 1
	} else if ints[0] > ints[1] {
		coinNum = ints[0] * 2 - 1
	} else {
		coinNum = ints[0] + ints[1]
	}

	fmt.Print(coinNum);
}

func scanLine(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func strToIntSlice(line string) []int {
	strSlice := strings.Split(line, " ")

	var intSlice []int
	for _, str := range strSlice {
		intValue, _ := strconv.Atoi(str)
		intSlice = append(intSlice, intValue)
	}

	return intSlice
}