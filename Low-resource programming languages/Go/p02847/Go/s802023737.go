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

	fmt.Printf("曜日: %v\n", day)

	for i, checkDay := range days {
		if checkDay == day {
			fmt.Printf("%d", i)
		}

	}

}
