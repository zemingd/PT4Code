package main

import (
	"fmt"
	"strings"
)

func main(){
	var query,pattern string
	fmt.Scan(&query)
	fmt.Scan(&pattern)
	copy_query := query[:]
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
			query = query[:i] + pattern + query[i+len(pattern):]
		}
	}
	if query != copy_query{
		fmt.Println(strings.Replace(query,"?","a",-1))
	}else{
		fmt.Println("UNRESTORABLE")
	}
}