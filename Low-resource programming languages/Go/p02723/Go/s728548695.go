package main

import (
    "bufio"
    "fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var S string
	fmt.Scan(&S)
	slice_S := strings.Split(S, "")
	if (slice_S[2] == slice_S[3]) && (slice_S[4] == slice_S[5]){
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}