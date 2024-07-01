package main

import(
	"fmt"
	"os"
	"bufio"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}

	sei := strings.Split(s, " ")

	k, _:= strconv.Atoi(sei[0])
	x, _:= strconv.Atoi(sei[1])
	nums := []int{x}

	m := x
	p := x

	for i := 1; i < k; i++ {
		m ++
		nums = append(nums,m)
		p--
		nums = append([]int{p}, nums...)
	}

	for i := 0; i < len(nums); i++{
		fmt.Print(nums[i])
		fmt.Print(" ")
	}
}