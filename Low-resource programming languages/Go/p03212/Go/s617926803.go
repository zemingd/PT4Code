package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strconv"
)

func main() {

	pattern := regexp.MustCompile("((3+5+7+)|(3+7+5+)|(5+3+7+)|(5+7+3+)|(7+5+3+)|(7+3+5+))+")
	pattern2 := regexp.MustCompile("[0124689]+")
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	s := sc.Text()
	fin, _ := strconv.Atoi(s)
	var num int
	for i := 1; i <= fin; i++ {
		str := fmt.Sprint(i)
		if pattern.MatchString(str) && !pattern2.MatchString(str) {
			num++
		}
	}
	fmt.Println(num)
}
