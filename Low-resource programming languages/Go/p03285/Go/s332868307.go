package main

/*
N A B
*/
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	flag := false
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	line := strings.Split(stdin.Text(), " ")
	n, _ := strconv.Atoi(line[0])
	for four := 0;four<=25;four++ {
		for seven := 0 ;seven <=14; seven++ {
			if four*4+seven*7 <=100 {
				if four*4+seven*7 == n {
				 flag = true
				 break
				}
			}
		}
	}

if flag {
	fmt.Println("Yes")
} else {
	fmt.Println("No")
	}
}
