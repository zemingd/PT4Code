package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// one string
func strStdin() string {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	return strings.TrimSpace(scanner.Text())
}

//one int64
func int64stdin() int64 {
	stringin := strStdin()
	val, _ := strconv.ParseInt(strings.TrimSpace(stringin), 10, 64)
	return val
}

// eliminate space
func splitWithoutEmpty(stringTargeted string, delim string) []string {
	stringSplited := strings.Split(stringTargeted, delim)
	strs := []string{}

	for _, str := range stringSplited {
		if str != "" {
			strs = append(strs, str)
		}
	}
	return strs
}

//strings in line
func sliceStrsStdin(delim string) []string {
	stringin := strStdin()
	return splitWithoutEmpty(stringin, delim)
}

func sliceInt64Stdin() []int64 {
	splitted := sliceStrsStdin(" ")

	ret := make([]int64, len(splitted), len(splitted))

	for i := range splitted {
		val, _ := strconv.ParseInt(splitted[i], 10, 64)
		ret[i] = val
	}
	return ret
}

func main() {
	str := strStdin()
	sum := 0

	for _, c := range str {
		sum += int(c - '0')
	}

	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
