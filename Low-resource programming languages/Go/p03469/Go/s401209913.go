package main

import (
	"fmt"
	"time"
)

func main() {
	var s string
	fmt.Scan(&s)

	layout := "2006/01/02"
	t, _ := time.Parse(layout, s)
	t = t.AddDate(1, 0, 0)
	fmt.Println(t.Format(layout))
}
