package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// 整数 a , b , c , d が与えられます。 a ≤ x ≤ b , c ≤ y ≤ d を満たす整数 x , y について、 x × y の最大値はいくつですか。
var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	ss := strings.Split(s, " ")
	a := toInt(ss[0])
	b := toInt(ss[1])
	c := toInt(ss[2])
	d := toInt(ss[3])
	var result int
	ac := a * c
	result = ac
	ad := a * d
	if result < ad {
		result = ad
	}
	bc := b * c
	if result < bc {
		result = bc
	}
	bd := b * d
	if result < bd {
		result = bd
	}
	fmt.Println(result)
}


func toInt(target string) int {
	a ,_ := strconv.ParseFloat(target, 64)
	integerValue := int(a)

	if float64(integerValue) == a {
		return integerValue
	}

	if a < 0 {
		return integerValue + 1
	} else {
		return integerValue
	}
}