package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, err := strconv.Atoi(input())
	if err != nil {
		log.Fatalln(err)
	}

	//if n < 1000 {
	//	fmt.Println(n)
	//	return
	//}
	//
	//if n%1000 == 0 {
	//	fmt.Println(0)
	//	return
	//}

	tmp := 1000
	for i := 1; tmp < n; i++ {
		tmp += 1000
	}

	fmt.Println(tmp - n)
}
