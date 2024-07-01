package main

import (
	"fmt"
	"strconv"

)

func main() {
	var S, count int
	fmt.Scan(&S)
	Str := strconv.Itoa(S)

	for i:=0; i<len(Str); i++ {
		for j:=i+1; j<=len(Str); j++ {
			aa, _ := strconv.Atoi(Str[i:j])
			if aa%2019 == 0 {
				count++
			}
		}
	}

	fmt.Println(count)

}