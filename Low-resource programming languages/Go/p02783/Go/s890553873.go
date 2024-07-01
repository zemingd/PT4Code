package main

import (
	"fmt"
)

func main(){
	var H, A int
	_,_ = fmt.Scan(&H,&A)
	fmt.Println((H+A-1)/A)
}