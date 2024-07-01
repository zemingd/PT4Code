package main

import (
	"fmt"
	"time"
)

func main() {
	var D string
	fmt.Scan(&D)
	layout := "2006/01/02"
	t, _ := time.Parse(layout, D)
	t1, _ := time.Parse(layout, "2019/05/01")
	diff := t.Sub(t1)
	if diff > 0 {
		fmt.Println("TBD")
	} else {
		fmt.Println("Heisei")
	}
}
