package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

func main(){
	reader := bufio.NewReader(os.Stdin)
	n, _ := reader.ReadString('\n')
	i, _ := strconv.Atoi(n)
	fmt.Println( i * i * i)
}