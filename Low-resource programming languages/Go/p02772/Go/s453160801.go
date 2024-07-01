package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// 文字列を1行取得
func StrStdin() (stringReturned string) {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	stringInput := scanner.Text()

	stringReturned = strings.TrimSpace(stringInput)
	return
}

// 整数値1つ取得
func IntStdin() (int, error) {
	stringInput := StrStdin()
	return strconv.Atoi(strings.TrimSpace(stringInput))
}

// 空白や空文字だけの値を除去したSplit()
func SplitWithoutEmpty(stringTargeted string, delim string) (stringReturned []string) {
	stringSplited := strings.Split(stringTargeted, delim)

	for _, str := range stringSplited {
		if str != "" {
			stringReturned = append(stringReturned, str)
		}
	}

	return
}

// デリミタで分割して文字列スライスを取得
func SplitStrStdin(delim string) (stringReturned []string) {
	// 文字列で1行取得
	stringInput := StrStdin()

	// 空白で分割
	// stringSplited := strings.Split(stringInput, delim)
	stringReturned = SplitWithoutEmpty(stringInput, delim)

	return
}

// デリミタで分割して整数値スライスを取得
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
	var _, _ = IntStdin()
	var A, _ = SplitIntStdin(" ")
	for i := 0; i < len(A); i++ {
		if A[i]%2 == 0 && A[i]%5 != 0 && A[i]%3 != 0 {
			fmt.Println("DENIED")
			return
		}
	}

		fmt.Println("APPROVED")

}
