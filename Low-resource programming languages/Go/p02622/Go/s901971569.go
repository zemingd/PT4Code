package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	if len(s) != len(t){
		return
	}

	count := 0
	for i:=0; i<len(s); i++{
		if s[i] != t[i]{
			count++
		}
	}

	fmt.Println(count)
}