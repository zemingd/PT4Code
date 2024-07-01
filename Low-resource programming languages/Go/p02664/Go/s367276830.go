package main

import (
	"fmt"
	"strings"
)

func main() {
	var t string
	fmt.Scan(&t)

	res := make([]string, 1000000)
	tmp := ""
	for i := len(t)-1; i >= 0 ; i-- {
		tmp = t[i :i+1]

		if tmp == "?" {

			if i == len(t)-1 {
				res[i] = "D"
			}else if i == 0 {
				if res[i+1] == "D" {
					res[i] = "P"
				} else {
					res[i] = "D"
				}
			
			} else {
				if res[i+1] == "D" {
					res[i] = "P"
				} else if t[i-1:i] == "?"{
					res[i] = "D"
				} else {
					res[i] = "D"
				}
					

				
				
			} 

		} else {
			res[i] = tmp
		}
	}

	

	fmt.Println(strings.Join(res, ""))
}