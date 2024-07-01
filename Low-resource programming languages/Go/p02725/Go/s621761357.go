package main

import (
	"fmt"
)

func main() {

	var k, n, aa  int 
	
	bef := [] int{}
	aft := [] int{}  

	fmt.Scan(&k,&n)
	sub := k / 2 
	for i := 0 ; i < n ; i ++{ 
		fmt.Scan(&aa)
		if sub >= aa {
			bef  = append(bef, aa)
		} else {
			aft  = append(aft, aa)	
		}
	}
	beflen := len(bef)
	aftlen := len(aft)
	aaa :=aftlen- 1
	bbb := beflen- 1
	hoge := aft[aaa: aftlen]
	huga := bef[bbb: beflen]
	fmt.Println(hoge[0]-huga[0])
}