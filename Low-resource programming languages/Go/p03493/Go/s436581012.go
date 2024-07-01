package main


import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)
	b := strings.Split(a,"")

	count := 0
	for k := range b {
		if b[k] == "1" {
			count++
		}
	}
	fmt.Println(count)
}