package main

import (
	"fmt"
	"time"
)

func main() {
	var s string
	fmt.Scan(&s)
	t, _ := time.Parse("2006/01/02", s)
	d, _ := time.Parse("2006/01/02", "2019/04/30")

	if t.Before(d) || t.Equal(d) {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
