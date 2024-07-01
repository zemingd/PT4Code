// 参考: https://atcoder.jp/contests/abc148/submissions/9084449
// lupinthe14th さんありがとうございます m(_ _)m

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
		num, err := strconv.Atoi(str)
		if err != nil {
			panic(err)
		}
		rSlice = append(rSlice, num)
	}
	return
}

// brickBreak は破壊したレンガの個数を返す関数
func brickBreak(tSlice []int) int {
	var broke, nowNum int = 0, 1
	for i := 0; i < len(tSlice); i++ {
		if tSlice[i] != nowNum {
			// N番目のレンガの番号が一致しなかったら破壊
			broke++
		} else {
			// 番号が一致したら次の番号に
			nowNum++
		}
	}
	// 用意されているレンガを全部壊したなら
	if broke == len(tSlice) {
		return -1
	}
	return broke
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	_ = scanner.Text()

	scanner.Scan()
	var brickNums []int = stringToInt(strings.Split(scanner.Text(), " "))

	fmt.Println(brickBreak(brickNums))
}
