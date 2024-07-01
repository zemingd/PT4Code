package main

import (
	"fmt"
	"strings"
)

func main() {
	var ymd string
	fmt.Scan(&ymd)
	ymdsp := strings.Split(ymd, "/")
	fmt.Println(ymdsp)
	ymdsp[0] = "2018"
	fmt.Println(strings.Join(ymdsp, "/"))
}
