package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var N int
	fmt.Scan(&N)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	hArr := make([]int, N)
	for i := range hArr {
		sc.Scan()
		hArr[i], _ = strconv.Atoi(sc.Text())
	}

	enable := true
	for i := 1; i < len(hArr); i++ {
		if hArr[i] - hArr[i-1] > 1 && i != len(hArr) - 1{
			enable = false
			break
		}
	}

	if enable {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}

}
