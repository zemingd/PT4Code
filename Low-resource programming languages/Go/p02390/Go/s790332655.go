package main

import "fmt"

func main() {

	var s, hour, min, sec int
	fmt.Scan(&s)
	
	hour = s / (60*60)
	min = s / 60 - hour*60
	sec = s - hour*60*60 - min*60

	fmt.Printf("%d:%d:%d", hour,min,sec)
}
