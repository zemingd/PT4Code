package main

import "fmt"

func main() {
	var time int
	fmt.Scan(&time)
	hour := time / 3600
	min := time % 3600 / 60
	sec := time - hour*3600 - min*60
	fmt.Printf("%d:%d:%d\n", hour, min, sec)
}

