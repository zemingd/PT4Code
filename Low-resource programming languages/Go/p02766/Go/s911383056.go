package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	var input = make([]string, 2)
	var n, k int
	if scanner.Scan() {
		input = strings.Split(scanner.Text(), " ")
		n, _ = strconv.Atoi(input[0])
		k, _ = strconv.Atoi(input[1])
	}

	//var flag bool
	var count int
	count = 1
	for ;n > k;{
		if n > k {
			n = n / k
			count++
		} else {
		}
	}
	if n/k ==0{
		fmt.Println(count)

	} else {
		fmt.Println(count+1)

	}

}
