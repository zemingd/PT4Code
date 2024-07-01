package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)
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
// 文字列を1行取得
func StrStdin() (stringReturned string) {
    scanner := bufio.NewScanner(os.Stdin)

    scanner.Scan()
    stringInput := scanner.Text()

    stringReturned = strings.TrimSpace(stringInput)
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
func SplitIntStdin(delim string) (intSlices []int64, err error) {
    // 文字列スライスを取得
    stringSplited := SplitStrStdin(" ")

    // 整数スライスに保存
    for i := range stringSplited {
        var iparam int64
        iparam, err = strconv.ParseInt(stringSplited[i], 10, 64)
        if err != nil {
            return
        }
        intSlices = append(intSlices, iparam)
    }
    return
}

func main() {
	r := bufio.NewReader(os.Stdin)
	var H, N int64
	if _, e := fmt.Fscan(r, &H, &N); e != nil {
		return
	}
	attacks, e := SplitIntStdin(" ")
	useDamage := make(map[int64]interface{}, N)
	if e != nil {
		return
	}
	var damageSum int64 = 0
	for _, attack := range attacks {
		if _, use := useDamage[attack]; use {
			continue
		} else {
			useDamage[attack] = true
		}
		damageSum += attack
	}
	if damageSum >= H {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
