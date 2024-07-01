package main

import (
	"fmt"
)

func main() {
	var time int
	fmt.Scanln(&time)
	hour := time / 3600
	minute := (time - hour*3600) / 60
	second := time - hour*3600 - minute*60
	fmt.Printf("%d:%d:%d\n",hour,minute,second)
	return
}

