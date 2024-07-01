package main

import (
	"fmt"
	"os"
)

func main() {

	var x string
	_, _ = fmt.Scan(&x)
	var A = [26]string{"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","w","x","y","z"}

	for i:=0; i < 26; i++ {
		if x==A[i] {
			fmt.Println("a")
			os.Exit(0)
		}
	}
	fmt.Println("A")
}
