package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var line, err = nextLine()
	if err != nil {
		fmt.Fprintf(os.Stderr, "wtf")
	}
	var nums = make([]int, 0, 100)
	for _, a := range strings.Split(line, " ") {
		num, err := strconv.Atoi(a)
		if err != nil {
			fmt.Println(err)
		}
		nums = append(nums, num)
	}

	fmt.Println(nums[0] * nums[1] / 2)
}

func nextLine() (string, error) {
	if sc.Scan() {
		return sc.Text(), nil
	} else {
		return "", errors.New("cant read next_line")
	}
}
