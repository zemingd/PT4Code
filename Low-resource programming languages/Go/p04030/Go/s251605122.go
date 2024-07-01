package main

import "fmt"

func main() {
	var S, w string
	fmt.Scan(&S)
	for _, v := range S {
		switch v {
		case '0':
			w += "0"
		case '1':
			w += "1"
		case 'B':
			if len(w) > 0 {
				w = w[:len(w)-1]
			}
		}
		fmt.Println(w)
	}
}