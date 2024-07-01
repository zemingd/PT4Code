package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

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

func main() {
	sc := bufio.NewScanner(os.Stdin)

	var cookingTimes []int

	lastCookingTimeIndex := 0
	lastCookingTimeMod := 10

	for i := 0; i < 5; i++ {
		inputInt := readLineToInt(sc)
		cookingTimes = append(cookingTimes, inputInt)

		modInt := inputInt % 10
		if modInt != 0 && modInt < lastCookingTimeMod {
			lastCookingTimeMod = modInt
			lastCookingTimeIndex = i
		}
	}

	outputValue := 0
	for i, cookingTime := range cookingTimes {
		if i == lastCookingTimeIndex {
			continue
		}

		if cookingTime%10 == 0 {
			outputValue += cookingTime
		} else {
			outputValue += cookingTime + 10 - cookingTime%10
		}
	}

	outputValue += cookingTimes[lastCookingTimeIndex]

	fmt.Println(outputValue)
}
