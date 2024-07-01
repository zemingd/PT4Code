package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func StrStdin() string {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	return strings.TrimSpace(scanner.Text())
}

func SliceStrsStdin(delim string) []string {
	stringInput := StrStdin()
	return SplitWithoutEmpty(stringInput, delim)
}

func SplitWithoutEmpty(stringTargeted string, delim string) []string {
	stringSplited := strings.Split(stringTargeted, delim)
	strs := []string{}

	for _, str := range stringSplited {
		if str != "" {
			strs = append(strs, str)
		}
	}
	return strs
}

func SliceIntStdin() []int {
	stringSplited := SliceStrsStdin(" ")

	intSlice := []int{}

	for ni := range stringSplited {
		num, _ := strconv.Atoi(stringSplited[ni])
		intSlice = append(intSlice, num)
	}

	return intSlice
}

func max(nums ...int) int {
	m := nums[0]
	for i, v := range nums {
		if i == 0 {
			continue
		}
		if m < v {
			m = v
		}
	}
	return m
}

func main() {

	abcd := SliceIntStdin()
	fmt.Println(max(abcd[0]*abcd[2], abcd[0]*abcd[3], abcd[1]*abcd[2], abcd[1]*abcd[3]))

}
