package main

import (
	"fmt"
	//"math"
	"sort"
	"strconv"
)

func main() {

	var N int

	var S string

	fmt.Scan(&N,&S)

	cnt :=0

	for i:=0;i<N-1;i++{
      
		if S[i:i+1] == S[i+1:i+2] {
			cnt++
		} 

	}

	fmt.Println(N-cnt)

}