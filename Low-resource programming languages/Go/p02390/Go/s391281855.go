package main

import (
	"fmt"
)

func main(){
	var i int
	fmt.Scan(&i)
	fmt.Printf("%d:%d:%d\n", i/3600, (i%3600)/60, i%60)

}
