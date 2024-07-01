package main

import (
	"fmt"
	"time"
)

const (
	yyyymmdd = "2006/01/02"
)
func main() {
	var s string
	_, _ = fmt.Scan(&s)
	target, _ := time.Parse(yyyymmdd, s)
	ss := "2019/04/30"
	deadline, _ := time.Parse(yyyymmdd, ss)
	deadline = deadline.Add(1 * time.Hour * 24)
	if target.Unix() <= deadline.Unix() {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}