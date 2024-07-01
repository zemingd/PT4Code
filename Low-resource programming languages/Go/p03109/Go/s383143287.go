package main

import (
	"fmt"
	"strconv"
	"strings"
	"time"
)

func main() {

	var S string
	fmt.Scan(&S)
	arr := strings.Split(S, "/")
	year, _ := strconv.Atoi(arr[0])
	month, _ := strconv.Atoi(arr[1])
	day, _ := strconv.Atoi(arr[2])
	t := time.Date(year, time.Month(month), day, 0, 0, 0, 0, time.Local)
	lastHeiseiDate := time.Date(2019, time.Month(4), 30, 0, 0, 0, 0, time.Local)
	if int(lastHeiseiDate.Sub(t)) >= 0 {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
