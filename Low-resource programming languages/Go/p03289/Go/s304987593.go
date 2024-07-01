package main

import (
	"strings"
	"fmt"
)

func main(){
	var s string
	fmt.Scan(&s)
	if strings.ContainsAny(s,"BDEFGHIJKLMNOPQRSTUVWXYZ"){
		fmt.Println("WA")
	} else {
		if (strings.Count(s,"A") == 1) && strings.Count(s,"C") == 1 {
			if strings.Index(s,"A") == 0 {

				n := strings.Index(s,"C")
				if 2 <= n && n < len(s)-1 {
					fmt.Println("AC")
				} else {
					fmt.Println("WA")
				}
			} else {
				fmt.Println("WA")
			}
		} else {
			fmt.Println("WA")
		}
	}
}