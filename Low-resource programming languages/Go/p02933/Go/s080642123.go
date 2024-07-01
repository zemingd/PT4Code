package main

import(
	"fmt"
	"os"
	"bufio"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var t string
	var s int
	if sc.Scan() {
		s, _= strconv.Atoi(sc.Text())
	}

	if sc.Scan() {
		t = sc.Text()
	}

	if s > 3200 {
		fmt.Println(t)
	}else{
		fmt.Println("red")
	}
}