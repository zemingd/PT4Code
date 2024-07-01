package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	// 勉強用。先人の丸パクリです
	var s string
	fmt.Scan(&s)
	//スラッシュでsplitさせてAtoi
	ss := strings.Split(s, "/")
	fmt.Println(ss)
	a ,_ := strconv.Atoi(ss[0])
	b ,_ := strconv.Atoi(ss[1])
	c ,_ := strconv.Atoi(ss[2])
	if a <= 2019 && b <= 4 && c <= 30 {
		fmt.Println("Heisei")
		return
	}
	fmt.Println("TBD")
  //ひどいなこれは
}