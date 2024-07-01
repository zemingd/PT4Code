package main

import (
	"fmt"
///	"strings"
///	"strconv"
)

func ShiftOnly(integers []int) int {
	var integer int
	for {
	tmparray := []int{}
		for _, str:=range integers {
			if str%2 != 0 {
				return integer
			} else {
				tmparray = append(tmparray,str/2)
			}
        	}
		integer += 1
	        integers = tmparray	
	}	
}



func main() {
        var a int
        var b int
        fmt.Scan(&a)
	tmparray := []int{}
        
	for i:=0; i < a; i++  {
        	fmt.Scan(&b)
		tmparray = append(tmparray,b)

        }

        defer fmt.Println(ShiftOnly(tmparray))
}
