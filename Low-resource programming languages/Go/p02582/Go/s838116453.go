package main

import(
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	cnt := 1
	for i := 0; i < 2; i++ {
		if s[i] == 'R' && s[i+1] == 'R'{
			cnt++
		}
	}
	if s == "SSS"{
		fmt.Println(0)
	}else{
		fmt.Println(cnt)
	}
}