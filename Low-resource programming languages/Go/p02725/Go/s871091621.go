package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func inputs(lines int) []string {
	var strSlice []string

	scanner := bufio.NewScanner(os.Stdin)

	for i := 0; i < lines; i++ {
		scanner.Scan()
		line := scanner.Text()
		strSlice = append(strSlice, line)

	}

	return strSlice
}

func main() {
	strSlice := inputs(2)

	tmp := strings.Split(strSlice[0], " ")
	tmp2 := strings.Split(strSlice[1], " ")

	var pos []int
	num, _ := strconv.Atoi(tmp[1])
	for i := 0; i < num; i++ {
		tmpPos, _ := strconv.Atoi(tmp2[i])
		pos = append(pos, tmpPos)
	}

	maxSize := len(pos)

	minLength := pos[maxSize-1] - pos[0]

	circumference, _ := strconv.Atoi(tmp[0])

	var reversePos []int
	for i := 0; i < maxSize; i++ {
		reversePos = append(reversePos, pos[i]-circumference)
	}

	if num > 2 {
		for i := 0; i < maxSize-1; i++ {
			tmpResult := pos[maxSize-i-2] - pos[maxSize-i-1]

			if minLength > tmpResult {
				minLength = tmpResult
			} else {
				break
			}
		}
	}

	fmt.Println(minLength)

}