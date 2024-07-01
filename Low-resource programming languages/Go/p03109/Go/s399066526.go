package main

import (
	"fmt"
	"time"
)

func main() {

	mainA()

}

const (
	yyyymmdd = "2006/01/02"
)

func mainA() {

	var dateS string
	fmt.Scan(&dateS)

	var res = solvoA(dateS)

	fmt.Println(res)
}

func solvoA(dateS string) string {
	t1, _ := time.Parse(yyyymmdd, dateS)
	t2, _ := time.Parse(yyyymmdd, "2019/04/30")
	var res string
	if t1.Unix() <= t2.Unix() {
		res = "Heisei"
	} else {
		res = "TBD"
	}
	return res
}
