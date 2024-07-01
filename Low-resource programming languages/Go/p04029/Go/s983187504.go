package main

import (
	"fmt"
)

func main(){
	var s string
	fmt.Scan(&s)
	var result string

	for _, b := range s {

		switch b {
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