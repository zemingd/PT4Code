package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func StrStdin() (stringReturned string) {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	stringInput := scanner.Text()

	stringReturned = strings.TrimSpace(stringInput)
	return
}

func IntStdin() (int, error) {
	stringInput := StrStdin()
	return strconv.Atoi(strings.TrimSpace(stringInput))
}

func SplitWithoutEmpty(stringTargeted string, delim string) (stringReturned []string) {
	stringSplited := strings.Split(stringTargeted, delim)

	for _, str := range stringSplited {
		if str != "" {
			stringReturned = append(stringReturned, str)
		}
	}

	return
}

func SplitStrStdin(delim string) (stringReturned []string) {
	// 文字列で1行取得
	stringInput := StrStdin()

	// 空白で分割
	// stringSplited := strings.Split(stringInput, delim)
	stringReturned = SplitWithoutEmpty(stringInput, delim)

	return
}

func SplitIntStdin(delim string) (intSlices []int, err error) {
	// 文字列スライスを取得
	stringSplited := SplitStrStdin(" ")

	// 整数スライスに保存
	for i := range stringSplited {
		var iparam int
		iparam, err = strconv.Atoi(stringSplited[i])
		if err != nil {
			return
		}
		intSlices = append(intSlices, iparam)
	}
	return
}

func main() {
	var n int
	fmt.Scanf("%d", &n)

	// get params
	w, err := SplitIntStdin(" ")
	if err != nil {
		fmt.Println(err)
	}

	// get sum
	var sum int
	for _, i := range w {
		sum += i
	}
	half := sum / 2

	var result int
	var tmpSum int
	var challangeSum int
	for _, num := range w {
		if (tmpSum != 0) {
			if (int(math.Abs((float64)(tmpSum) - (float64)(half))) < int(math.Abs((float64)(challangeSum) - (float64)(half)))) {
				result = int(math.Abs((float64)(sum-tmpSum) - (float64)(tmpSum)))
			} else {
				result = int(math.Abs((float64)(sum-challangeSum) - (float64)(challangeSum)))
			}
			break
		}

		// 半分超える場合は値を保持
		if (challangeSum+num > half) {
			tmpSum = challangeSum
		}
		challangeSum += num
	}

	fmt.Printf("%d\n", result)
}
