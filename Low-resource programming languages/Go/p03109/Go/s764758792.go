package main

import (
	"bufio"
	"fmt"
	"os"
	"time"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	d := nextLine()
	layout := "2006/01/02"
	limit, _ := time.Parse(layout, "2019/04/30")
	t, _ := time.Parse(layout, d)

	if t.Unix() <= limit.Unix() {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
