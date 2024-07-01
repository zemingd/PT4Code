package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	buf, _, _ := bufio.NewReader(os.Stdout).ReadLine()
	s := strings.Split(string(buf), " ")
	a, _ := strconv.ParseFloat(s[0], 64)
	b, _ := strconv.ParseFloat(s[0], 64)
	c, _ := strconv.ParseFloat(s[0], 64)
	if math.Sqrt(a)+math.Sqrt(b) < math.Sqrt(c) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
