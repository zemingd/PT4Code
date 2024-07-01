package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	var abc = strings.Split(sc.Text(), " ")
	if len(abc) != 3 {
		fmt.Println("Illegal arguments.")
		return
	}
	var a, err1 = strconv.Atoi(abc[0])
	if err1 != nil {
		fmt.Println(err1)
		return
	}
	var b, err2 = strconv.Atoi(abc[1])
	if err2 != nil {
		fmt.Println(err2)
		return
	}
	var c, err3 = strconv.Atoi(abc[2])
	if err3 != nil {
		fmt.Println(err3)
		return
	}
	if a < b && b < c {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
