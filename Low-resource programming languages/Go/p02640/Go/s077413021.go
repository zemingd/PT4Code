package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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
	x := nextInt()
	y := nextInt()

	num_4 := y % 4
	num_2 := num_4 / 2
	if num_2 == x - (x / 4) {
		fmt.Println("Yes")
	} else {
		if (y - 4) / 2 == x - 1 {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}
}