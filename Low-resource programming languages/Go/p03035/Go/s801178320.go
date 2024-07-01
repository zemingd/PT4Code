package main

import (
	"fmt"
	//"sort"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	str := strings.Split(s, "")
	if str[0]+str[1] == "00" || str[2]+str[3] == "00" {
		fmt.Print("NA")
	} else {
		a, _ := strconv.Atoi(str[0])
		b, _ := strconv.Atoi(str[1])
		c, _ := strconv.Atoi(str[2])
		d, _ := strconv.Atoi(str[3])
		x := a*10 + b
		y := c*10 + d
		if x > 12 && y > 12 {
			fmt.Print("NA")
		} else if x > 12 {
			fmt.Print("YYMM")
		} else if y > 12 {
			fmt.Print("MMYY")
		} else {
			fmt.Print("AMBIGUOUS")
		}
	}
}
