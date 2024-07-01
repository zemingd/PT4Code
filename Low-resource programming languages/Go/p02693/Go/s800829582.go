package main

import (
	"fmt"
)

func main() {
	var k int
	var a int
	var b int
	k = 4
	a = 5
	b = 8
	fmt.Println(str(k,a,b))
	

}

func str(k, a, b int)string{

	for i := b; i >= a; i-- {
		if i%k == 0 {
			return "OK"
		}
	}
	return "NG"
}
