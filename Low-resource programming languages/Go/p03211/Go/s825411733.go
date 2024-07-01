package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	ret := 9999
	for i := 0; i < len(s)-2; i++ {
		ans := int(s[i]-'0')*100 + int(s[i+1]-'0')*10 + int(s[i+2]-'0') - 753
		if ans < 0 {
			ans *= -1
		}
		if ans < ret {
			ret = ans
		}
	}
	fmt.Println(ret)
}
