package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()

	cnt, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}

	sc.Scan()
	nums := strings.Split(sc.Text(), " ")

	var a, b, c int
	result := 0

	for i := 0; i < cnt-2; i++ {
		a, e = strconv.Atoi(nums[i])
		b, e = strconv.Atoi(nums[i+1])
		c, e = strconv.Atoi(nums[i+2])
		if a < b && b < c || a > b && b > c {
			result++
		}
	}

	fmt.Println(result)

}