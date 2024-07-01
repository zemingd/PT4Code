package main

/*
   N
*/
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	n, _ := strconv.Atoi(stdin.Text())
	if n >= 30 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
