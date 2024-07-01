package main

import (
	"fmt"
	"regexp"
)

func main() {
	var a string
	fmt.Scanf("%s", &a)

	r := regexp.MustCompile(`[A-Z]`)
	if r.MatchString(a) {
		fmt.Println("A")
	}else{
		fmt.Println("a")
	}	
}
