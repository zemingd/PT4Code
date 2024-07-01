package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main()  {
	var N, M int
	sum := 0
	_, _ = fmt.Scan(&N, &M)

	inputs := strings.Split(nextLine(), " ")

	for i := 0; i < len(inputs); i++ {
		num, _ := strconv.Atoi(inputs[i])
		sum += num
	}

	tmp := N - sum

	if tmp >= 0{
		fmt.Println(tmp)
	}else{
		fmt.Println(-1)
	}
}
