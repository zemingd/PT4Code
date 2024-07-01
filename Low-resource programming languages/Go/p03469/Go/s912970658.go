package main

import (
	"fmt"
	"time"
)

func main() {
	var s string
	fmt.Scan(&s)

	t,_ := time.Parse("2006/01/02",s)
	at := t.AddDate(1,0,0)
	fmt.Println(at.Format("2006/01/02"))
}