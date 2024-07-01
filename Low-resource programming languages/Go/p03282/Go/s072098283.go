package main

import (
	"fmt"
	"strconv"
)

const (
	LOOPCOUNT = 500000000000
)

type InfinityString string

func (infinit InfinityString) makeClone() InfinityString {
	var resultString InfinityString
	for _,ch := range infinit {
		number,err := strconv.Atoi(string(ch))
		if err != nil { 
			panic(err)
		}
		for i := 0;i < number;i++ {
			resultString += InfinityString(ch)
		}
	}
	return resultString
}

func (infinit InfinityString) getFigure(index int) string {
	return string(infinit[index])
}

func main() {
	var S InfinityString
	var K int
	
	fmt.Scan(&S)
	fmt.Scan(&K)
//	fmt.Println(S.makeClone())
	
	for i := 0;i < LOOPCOUNT;i++ {
		if K < len(S) {
			break
		}
		S = S.makeClone()
	}

	fmt.Println(S.getFigure(K))
}

