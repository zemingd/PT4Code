package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"regexp"
	"strconv"
	"strings"
)

func main() {
	r := regexp.MustCompile("\\s+")
	buf, _, _ := bufio.NewReader(os.Stdout).ReadLine()
	s := r.Split(strings.TrimSpace(string(buf)), -1)
	a, _ := strconv.ParseFloat(s[0], 64)
	b, _ := strconv.ParseFloat(s[1], 64)
	c, _ := strconv.ParseFloat(s[2], 64)
	if math.Sqrt(a)+math.Sqrt(b) < math.Sqrt(c) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
