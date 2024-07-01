package main

import "fmt"
import "strings"

func main(){
	var N int;
	var S string;
	fmt.Scan(&N, &S);

	fmt.Println(strings.Count(S, "ABC"));
}