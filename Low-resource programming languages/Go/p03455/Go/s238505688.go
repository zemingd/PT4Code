package main

import (
	"fmt"
	"os"
	"bufio"
	"strconv"
	"strings"
	"errors"
	"log"
)

// 文字列を1行入力
func StrStdin() (stringReturned string) {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	stringInput := scanner.Text()

	stringReturned = strings.TrimSpace(stringInput)

	return
}

// 整数値を1つ取得
// func IntStdin() (int, error) {
// 	stringInput := StrStdin()
// 	return strconv.Atoi(strings.TrimSpace(stringInput))
// }

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
		var errMsg string
		iparam, err = strconv.Atoi(stringSplited[i])
		
		if err != nil {
			return
		}
		errMsg = catchNumError(iparam, i)
		if errMsg != "" {
			if errMsg := numError(); errMsg != nil {
				log.Fatal(errMsg)
				return
			}
		}
		intSlices = append(intSlices, iparam)

	}

	return
}

// 数値の条件を判定
func catchNumError(num int, index int) (errMsg string) {
	if (index == 0 && num >= 1) || (index == 1 && num <= 10000) {
		return
	}else {
		errMsg = "条件満たしてないよ"
		return
	}

}


// 偶数か奇数を判定
func detectEvenOdd(num []int) (msg string) {
	if ((num[0]*num[1]) % 2) == 0 {
		msg = "Even"
		return
	}else {
		msg = "Odd"
		return
	}
}
func numError() error {
	return errors.New("条件満たしてないよ")
}
func main() {
	i, err := SplitIntStdin(" ")
	var msg string
	if err == nil {
		msg = detectEvenOdd(i)
		fmt.Println(msg)
	}
}