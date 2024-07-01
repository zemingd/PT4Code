package main

import (
	"bufio"
	"fmt"
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
	var a int
	var b int
	fmt.Scanf("%d %d %d", &n, &a, &b)

	if ((n * a) >= b) {
		fmt.Printf("%d", b)
	} else {
		fmt.Printf("%d", n * a)
	}

}
