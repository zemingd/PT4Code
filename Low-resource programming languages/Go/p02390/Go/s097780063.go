package main

import (
	"fmt"
)

func main(){
	var i int
	fmt.Scan(&i)
	fmt.Println("%d:%d:%d", i/3600, (i%3600)/60, i%60)

}
