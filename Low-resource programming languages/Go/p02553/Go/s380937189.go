package main

import (
	"bufio"
	"fmt"
	"math"
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

func max(nums []int) int {
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func main() {

	abcd := SliceIntStdin()

	var xy []int
	xy = append(xy, abcd[0]*abcd[2])
	xy = append(xy, abcd[0]*abcd[3])
	xy = append(xy, abcd[1]*abcd[2])
	xy = append(xy, abcd[1]*abcd[2])

	fmt.Println(max(xy))

}
