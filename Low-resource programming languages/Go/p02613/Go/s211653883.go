package main

import "fmt"

func main() {
	var (
		count int
		judge string
		ac    int
		wa    int
		tle   int
		re    int
	)
	fmt.Scan(&count)

	for i := 0; i < count; i++ {
		fmt.Scan(&judge)
		if judge == "AC" {
			ac++
		} else if judge == "WA" {
			wa++
		} else if judge == "TLE" {
			tle++
		} else {
			re++
		}
	}
	fmt.Println("AC x", ac)
	fmt.Println("WA x", wa)
	fmt.Println("TLE x", tle)
	fmt.Println("RE x", re)
}
