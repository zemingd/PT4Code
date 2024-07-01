package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	sumTime := 0
	minFirstDigitValue := 10

	for i := 0; i < 5; i++ {
		input, _ := strconv.Atoi(scanNextLine(scanner))
		minFirstDigitValue = compareFirstDigit(minFirstDigitValue, input)
		sumTime += roundUpFirstDigit(input)
	}

	sumTime -= 10 - minFirstDigitValue

	fmt.Print(sumTime)
}


func scanNextLine(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func roundUpFirstDigit(value int) int {
	return int(math.Ceil(float64(value) * 0.1) * 10.0)
}

func compareFirstDigit(minFirstDigitValue int, value int) int {
	firstDigit := value % 10
	if firstDigit < minFirstDigitValue && firstDigit > 0 {
		minFirstDigitValue = firstDigit
	}
	return minFirstDigitValue
}