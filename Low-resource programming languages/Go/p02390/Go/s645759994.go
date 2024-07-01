package main

import (
	"fmt"
	"strconv"
)

func main() {
	var S int
	fmt.Scan(&S)

	h := S / 3600
	m := (S - 3600*h) / 60
	s := S - 3600*h - 60*m

	fmt.Println(strconv.Itoa(h) + ":" + strconv.Itoa(m) + ":" + strconv.Itoa(s))
}

