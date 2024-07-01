package main

import (
	"fmt"
)

func main() {

	var S string
	fmt.Scanf("%s\n", &S)
	last := ""
	ok := false
	for _, s := range S {
		if string(s) == "" {
          last = string(s)
			continue
		}
		if string(s) != last {
			ok = true
			break
		}
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
