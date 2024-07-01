package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	scanner := bufio.NewScanner(os.Stdin)
	hs := strToIntSlice(scanLine(scanner))

	maxHeight := max(hs, n)

	totalCount := 0
	for height := maxHeight; height > 0; height-- {
		flag := false
		for index := 0; index < n; index++ {
			if hs[index] >= height && flag == false {
				totalCount++
				flag = true
			} else if (hs[index] < height && flag == true) {
				flag = false
			}
		}
	}

	fmt.Println(totalCount)
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

func max(hs []int, n int) int {
	max := 0
	for index := 0; index < n; index++ {
		if max < hs[index] {
			max = hs[index]
		}
	}
	return max
}