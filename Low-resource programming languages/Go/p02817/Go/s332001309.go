package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	text1, _ := reader.ReadString(' ')
	text2, _ := reader.ReadString('\n')
	text2 = strings.Replace(text2, "\n", "", -1)
	text1 = strings.Replace(text1, " ", "", -1)
	text3 := text2 + text1
	fmt.Println(text3)
}
