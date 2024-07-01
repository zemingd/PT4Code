package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	scanner := bufio.NewScanner(os.Stdin)
	vs := strToIntSlice(scanLine(scanner))
	cs := strToIntSlice(scanLine(scanner))

	sumDiff := 0
	for index := 0; index < n; index++ {
		if vs[index] > cs[index] {
			sumDiff += vs[index] - cs[index]
		}
	}

	fmt.Println(sumDiff)
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