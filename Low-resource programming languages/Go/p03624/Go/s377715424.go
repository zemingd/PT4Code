package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {

	str := nextLine()

	slice := make([]int, 26)
	for _, v := range str {
		slice[int(v)-97] = 1
	}

	for i, v := range slice {
		if v == 0 {
			fmt.Println(string(i + 97))
			return
		}
	}

	fmt.Println("None")

}
