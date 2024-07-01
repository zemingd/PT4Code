package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

// 1行読み込み
func nextLine() string {
	sc.Scan()
	return sc.Text()
}

// 読み込みをint型へキャスト
func nextInt() int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if(err != nil) {
		panic(err)
	}
	return num
}

// 読み込みをfloat型へキャスト
func nextFloat() float64 {
	sc.Scan()
	num, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return num
}

func main() {
	// scannerの挙動を改行区切り → 空白区切りに変更
	sc.Split(bufio.ScanWords)
	k := nextInt()
	s := nextLine()
	if len(s) <= k {
		fmt.Println(s)
	} else {
		modi_s := strings.Split(s, "")
		out_s := make([]string, k, k)
		for i := 0; i < k; i++ {
			out_s = append(out_s, string(modi_s[i]))
		}
		fmt.Println(strings.Join(out_s, "") + "...")
	}
}