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

	inputInts := explodeInt(" ", readLine(sc))

	aButton := inputInts[0]
	bButton := inputInts[1]

	var outputValue int

	for index := 0; index < 2; index++ {
		if aButton >= bButton {
			outputValue += aButton
			aButton += -1
		} else {
			outputValue += bButton
			bButton += -1
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
