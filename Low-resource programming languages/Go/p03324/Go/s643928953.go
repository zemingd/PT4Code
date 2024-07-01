package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)


func main() {
	scanner := bufio.NewScanner(os.Stdin)

	inputs := strToInts(scanLine(scanner))
	d, n := inputs[0], inputs[1]

	if n == 100 {
		n++
	}

	result := int64(math.Pow(100.0, float64(d))) * int64(n)
	fmt.Print(result)
}

func scanLine(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func strToInts(line string) []int {
	strSlice := strings.Split(line, " ")

	var intSlice []int
	for _, str := range strSlice {
		intValue, _ := strconv.Atoi(str)
		intSlice = append(intSlice, intValue)
	}

	return intSlice
}