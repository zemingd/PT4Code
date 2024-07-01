package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	o, _ := strconv.ParseInt(s, 2, 0)

	r1s := ""
	for i:=0; i< len(s) ;i++  {
		if i % 2 == 0 {
			r1s += "1"
		} else {
			r1s += "0"
		}
	}

	r2s := ""
	for i:=0; i< len(s) ;i++  {
		if i % 2 == 0 {
			r1s += "0"
		} else {
			r1s += "1"
		}
	}

	r1, _ := strconv.ParseInt(r1s, 2, 0)
	r2, _ := strconv.ParseInt(r2s, 2, 0)

	d1 := o ^ r1
	d2 := o ^ r2

	f1 := strconv.FormatInt(d1, 2)
	c1 := strings.Count(f1, "1")
	f2 := strconv.FormatInt(d2, 2)
	c2 := strings.Count(f2, "1")

	if c1 > c2 {
		fmt.Printf("%d", c2)
	} else {
		fmt.Printf("%d", c1)
	}
}
