package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var inputArray []int
	inputArray, _ = toIntArray(splitInput(scanner, " "))
	n := inputArray[0]
	aArray, _ := toIntArray(splitInput(scanner, " "))

	// n-k個のレンガを砕いた結果、1,2,3,...,kとなればよい
	// 1が見つからない...-1
	// 1が見つかる...それより左は全部砕く
	// 1より右で2を見つけるまで砕く
	// 2より右で3を見つけるまで砕く
	// 以下繰り返し O(n)
	ans := 0
	notFound := true
	lastFoundIdx := -1
	finding := 1
	for idx := 0; idx < n; idx++ {
		if aArray[idx] == finding {
			ans += idx - lastFoundIdx - 1
			lastFoundIdx = idx
			finding++
			notFound = false
		}
	}
	if notFound {
		ans = -1
	}

	fmt.Println(ans)
}

func splitInput(scanner *bufio.Scanner, sep string) []string {
	scanner.Scan()
	return strings.Split(scanner.Text(), sep)
}

func toIntArray(str []string) ([]int, error) {
	length := len(str)
	resVal := make([]int, length)
	var err error
	for i := 0; i < length; i++ {
		resVal[i], err = strconv.Atoi(str[i])
		if err != nil {
			return nil, err
		}
	}
	return resVal, nil
}
