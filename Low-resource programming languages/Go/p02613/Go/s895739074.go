package main

import (
	"fmt"
)

func main() {
	//fmt.Println("Hello World")

	var n int
	fmt.Scanf("%d", &n)

	ac,wa,tle,re := 0,0,0,0
	for i := 0; i < n; i++ {
		var tmp string
		fmt.Scanf("%s", &tmp)

		switch tmp{
		case "AC": ac++
		case "WA": wa++
		case "TLE": tle++
		case "RE": re++
		}
	}
	fmt.Println("AC x ",ac)
	fmt.Println("WA x ",wa)
	fmt.Println("TLE x ",tle)
	fmt.Println("RE x ",re)

}
