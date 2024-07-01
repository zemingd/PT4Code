package main

import (
	"fmt"
	"sort"
)

func main() {
	//長さと文字列の個数を標準入力で受け付ける
	fmt.Println("文字列の'長さ'と'文字列の個数'を整数で入力してください。")
	slice := make([]int, 2)
	fmt.Scanln(&slice[0], &slice[1])
	//fmt.Println(slice) //確認用

	fmt.Printf("今から作るのは、文字数：%d、文字列：%dを結合したものです\nそれでは、文字を入力してください\n", slice[1], slice[0])
	word := make([]string, slice[1])
	for i := 0; i < slice[0]; i++ {
		fmt.Scan(&word[i])
	}
	//fmt.Println(word) //確認用

	//文字順にソートする
	sort.Strings(word)

	//結果を出力する
	fmt.Println("ソートし、横一列に並べると、以下のようになります")
	for i := 0; i < slice[0]; i++ {
		fmt.Print(word[i])
	}

}
