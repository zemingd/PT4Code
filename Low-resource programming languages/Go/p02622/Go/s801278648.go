package main

import (
	"fmt"
)

func main() {
	ins, ins2, ou := "", "", 0
	fmt.Scanf("%s", &ins)
	fmt.Scanf("%s", &ins2)
	in2 := []byte(ins2)
	in := []byte(ins)
	for j, i := range in {
      //fmt.Println(j)
      if i != byte(in2[j]) {
        //fmt.Println(j)
			ou++
		}
	}
	fmt.Println(ou)
}