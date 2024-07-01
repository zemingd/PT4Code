package main

import (
	"fmt"
	"strconv"
)

func main(){

	diff := 1000000

	var str string
	fmt.Scan(&str)

	for i:=0; i+3<= len(str); i++{
		tmpInt, _ := strconv.Atoi(str[i:i+3])

		diff = min(diff, abs(tmpInt - 753))
	}

	fmt.Println(diff)

}

func abs(x int) int{
	if x < 0{
		return -x
	}else{
		return x
	}
}

func min(x int, y int) int{
	if x < y{
		return x
	}else{
		return y
	}
}