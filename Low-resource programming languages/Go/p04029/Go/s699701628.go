package main

import (
	"fmt"
	"strings"
)

func main() {
	var str string
	fmt.Scan(&str)

	slice := strings.Split(str, "")

	//fmt.Printf("%s\n", slice)

	ans := []string{}
	for i, x := range slice {
		if x != "B" {
			ans = append(ans, x)
		} else if i != 0 && x == "B" {
			length := len(ans)
			if length != 0 {
				ans = ans[:length-1]
			}
		}
	}
	r := strings.Join(ans, "")
	fmt.Println(r)
}