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
	for i:=0; i<len(query)-len(pattern)+1; i++{
		var count int
		new_string := query[i:i+len(pattern)]
		for j:=0;j<len(pattern);j++{
			if new_string[j] == '?' || new_string[j] == pattern[j]{
				count++
				continue
			}else{
				break
			}
		}
		if count == len(pattern){
			answer := strings.Replace(query,new_string,pattern,-1)
			answer = strings.Replace(answer,"?","a",-1)
			fmt.Println(answer)
			os.Exit(0)
		}
	}
	fmt.Println("UNRESTORABLE")
}