package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	str := strings.Split(s, "")
	ret := 0
	text := ""
	prev_text := ""
	flg := true
	for i := 0; i < len(s); i++ {
		text += str[i]
		if str[i] == prev_text && flg {
			flg = !flg
			continue
		}
		flg = true
		ret++
		prev_text = text
		text = ""
	}
	fmt.Println(ret)
}
