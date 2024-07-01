package main

import (
	"fmt"
	"os"
	"bufio"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	t := stdin.Text()
	time, _ := strconv.Atoi(t)


	hour := time / 3600;
	time = time % 3600;

	minute := time / 60
	time = time % 60

	second := time

	fmt.Printf("%v:%v:%v\n", hour, minute, second)
}

