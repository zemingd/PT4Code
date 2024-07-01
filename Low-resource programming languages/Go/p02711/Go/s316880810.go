package main

import (
	"fmt"
)

func main()  {
	var str string

	_, _ = fmt.Scan(&str)

	if IsSevenExistingIn(str){
		fmt.Println("YES")
	}else {
		fmt.Println("NO")
	}
}

func IsSevenExistingIn(str string) bool{
	for i := 0; i < len(str); i++{
		if str[i] == '7'{
			return true
		}
	}
	return false
}
