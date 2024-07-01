package main

import (
	"os"
	"fmt"
	"bufio"
	"strings"
	"strconv"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	var input     = strings.Split(sc.Text(), " ")
	var min, _    = strconv.Atoi(input[0])
	var max, _    = strconv.Atoi(input[1])
	var scope, _  = strconv.Atoi(input[2])
	
	if (max - min <= scope + 1) {
		for min <= max {
			fmt.Println(min)
			min++
		}
	} else {
		for i := 0; i <= scope - 1; i++ {
			fmt.Println(min + i)
		} 
		for i := scope - 1; i >= 0  ; i-- {
			fmt.Println(max - i)
		}
	}
	
}