package main

import (
	"fmt"
	"os"
	"strings"
)

func main(){
	var query,pattern string
	fmt.Scan(&query)
	fmt.Scan(&pattern)
	if len(query) < len(pattern){
		fmt.Println("UNRESTORABLE")
		os.Exit(0)
	}
	//Make Substring
	for i:=0; i<len(query)-len(pattern)+1; i++{
		new_string := query[i:i+len(pattern)]
		//Test overlap
		success := true
		for j:=0;j<len(pattern);j++{
			if new_string[j] == '?' || new_string[j] == pattern[j]{
				continue
			}else{
				success = false
				break
			}
		}
		if success == true{
			fmt.Print(strings.Replace(query[:i],"?","a",-1))
			fmt.Print(pattern)
			fmt.Println(strings.Replace(query[i+len(pattern):],"?","a",-1))
			fmt.Println()
			os.Exit(0)
		}
	}
	fmt.Println("UNRESTORABLE")
}