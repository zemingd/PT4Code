package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 10000)
	sc.Buffer(buf, 100000+1024)

	n := readLineToInt(sc)
	vValues := explodeInt(" ", readLine(sc))
	cValues := explodeInt(" ", readLine(sc))

	outputValue := 0

	for index := 0; index < n; index++ {
		vcValue := vValues[index] - cValues[index]

		if vcValue > 0 {
			outputValue += vcValue
		}
	}

	fmt.Println(outputValue)
}

// helper

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return strings.TrimSpace(sc.Text())
}

func readLineToInt(sc *bufio.Scanner) int {
	intValue, err := strconv.Atoi(readLine(sc))
	if err != nil {
		panic(err)
	}

	return intValue
}

func explodeString(delimiter string, inputValue string) []string {
	splittedValue := strings.Split(inputValue, delimiter)

	var trimmedValues []string

	for _, value := range splittedValue {
		if value != "" {
			trimmedValues = append(trimmedValues, value)
		}
	}

	return trimmedValues
}

func explodeInt(delimiter string, inputValue string) []int {
	inputStrings := explodeString(" ", inputValue)

	var splittedInts []int

	for _, inputString := range inputStrings {
		var (
			intValue int
			err      error
		)
		intValue, err = strconv.Atoi(inputString)

		if err != nil {
			panic(err)
		}
		splittedInts = append(splittedInts, intValue)
	}

	return splittedInts
}
