package main

import (
	"fmt"
	"bufio"
	"strconv"
	"os"
)

var stdin = bufio.NewScanner(os.Stdin)

func Input_int() int {
	stdin.Scan()
	out,err := strconv.Atoi(stdin.Text())
	if err != nil{
		panic(err)
	}
	return out
}

func main(){
	stdin.Split(bufio.ScanWords)
	A,B,T := Input_int(),Input_int(),Input_int()
	num := T/A
	fmt.Println(num*B)
}