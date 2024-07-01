package main

import (
	"fmt"
)

func main() {

	// 読み込み数取得
	var day string
	fmt.Scan(&day)

	// 曜日データ取得
	days := [...]string{"SUN", "SAT", "FRI", "THU", "WED", "TUE", "MON"}

	for i, checkDay := range days {
		if checkDay == day && i != 0 {
			fmt.Printf("%d", i)
		} else {
			fmt.Printf("%d", 7)
		}

	}

}