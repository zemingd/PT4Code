package main

import (
	"fmt"
	"strings"
)

func main() {
	var wantID, nowID string
	fmt.Scan(&wantID)
	fmt.Scan(&nowID)

	if strings.Contains(nowID, wantID) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
