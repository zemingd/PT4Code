package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Scan()
	texts := strings.Split(stdin.Text(), " ")
	text := GetStdin(texts)
	out := Run(text)
	fmt.Println(out)
}

func Run(data []string) string {
	ins := []int{}
	for _, d := range data {
		i, _ := strconv.Atoi(d)
		ins = append(ins, i)
	}
	sort.Ints(ins)
	return strconv.Itoa(ins[0] + ins[1])
}

func GetStdin(text []string) []string {
	if len(text) > 1 {
		return text
	}
	max, _ := strconv.ParseInt(text[0], 10, 64)
	var ret string
	for index := 0; index < int(max); index++ {
		stdin.Scan()
		ret += stdin.Text() + "\n"
	}
	return strings.Split(ret, "\n")
}