package main

import (
	"os"
	"bufio"
)

func main()  {

	r := bufio.NewReader(os.Stdin)
	a, _ := r.ReadByte()
	b, _ := r.ReadByte()

	if a * b / 2 == 0 {
		println("EVEN")
	} else{
		println("ODD")
	}

}