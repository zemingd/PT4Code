package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// stringToInt はstring型のスライスをint型のスライスにキャストする関数
func stringToInt(tSlice []string) (rSlice []int) {
	for _, str := range tSlice {
		num, _ := strconv.Atoi(str)
		rSlice = append(rSlice, num)
	}
	return
}

// sliceSum はint型のスライスの要素全体の和を求める関数
func sliceSum(tSlice []int) int {
	var sumNum int = 0
	for _, num := range tSlice {
		sumNum += num
	}
	return sumNum
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	var daysString string = scanner.Text()
	var days int = stringToInt(strings.Split(daysString, " "))[0]

	scanner.Scan()
	var hwList []int = stringToInt(strings.Split(scanner.Text(), " "))

	if days >= sliceSum(hwList) {
		fmt.Println(days - sliceSum(hwList))
	} else {
		fmt.Println("-1")
	}
}
