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

	n, _ := strconv.Atoi(scanLine(scanner))

	min := int(math.Pow(10, 15))
	for index := 0; index < 5; index++ {
		input, _ := strconv.Atoi(scanLine(scanner))
		if min > input {
			min = input
		}
	}

	time := calcDivisionRoundUp(n, min)
	time += 5 - 1

	fmt.Print(time);
}

func scanLine(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func calcDivisionRoundUp(dividend int, divisor int) int {
	return int(math.Ceil(float64(dividend) / float64(divisor)))
}