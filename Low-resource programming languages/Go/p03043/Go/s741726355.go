package main

import (
	"bufio"
	"os"
	"fmt"
	"strings"
	"strconv"
	"math"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')
	string_list := strings.Split(text, " ")
	N, _ := strconv.ParseFloat(string_list[0], 64)
	K, _ := strconv.ParseFloat(strings.Trim(string_list[1], "\r\n"), 64)
	
	res := 0.0

	for i := 1.0; i <= N; i++ {
		c := 0.0
		p := i
		for p < K {
			p = p * 2
			c++
		}
		res = res + ((1.0 / N) * math.Pow(0.5, c))
	}
	fmt.Println(res)
}