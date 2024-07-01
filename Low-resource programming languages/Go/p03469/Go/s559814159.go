package main

import(
	"fmt"
	"strings"
)

func main()  {
	var str string
	fmt.Scan(&str)
	fmt.Println(strings.Replace(str, "2017", "2018", 1)) //変数名, 置換する文字列, 置換する回数
}