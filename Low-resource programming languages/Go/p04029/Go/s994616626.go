package main

import (
	"fmt"
)

func main(){
	var s string
	fmt.Scan(&s)
	var result string

	for i, _ := range s {

		switch s[i] {
		case '0':
			result += "0"
		case '1':
			result += "1"
		case 'B':
			if len(result) > 0 {
				result = result[:len(result)-1]
			}
		}
	}
	fmt.Println(result)

}