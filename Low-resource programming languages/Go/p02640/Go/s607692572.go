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

	// 余り
	mod_4 := y % 4
	// 2本の動物の数
	num_2 := mod_4 / 2
	num_4 := y / 4
	if num_2 + num_4 == x {
		fmt.Println("Yes")
	} else {
		for n := num_4 * 4 - 4; n > 0; n = n - 4 {
			num_4 = num_4 - 1
			num_2 = num_2 + 2
			if num_2 + num_4 == x {
				fmt.Println("Yes")
				return
			} else if num_4 < 0 {
				fmt.Println("No")
				return
			}
		}
		fmt.Println("No")
	}
}