package main

import (
	"fmt"
  	"strings"
)

func main() {
  var str string
  var x int32
  fmt.Scanf("%s, %i", &str, &x)
  
  connected := ""
  for x > 0 {
    x--
  	connected = connected + str
  }
  connectedSlice := strings.Split(connected, "")
  
  alphabet := []string{"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
  var count int32
  var newStrSlice []string
  for _, c := range connectedSlice {
    oneBeforeStr, isSkip := isSkipReplace(newStrSlice, c)
    if isSkip {
      	newStrSlice = append(newStrSlice, c)
    	continue
    }
    
    newStrSlice = replaceAppend(newStrSlice, oneBeforeStr, alphabet)
    
    count++
  }
  
  fmt.Print(count)
}

func isSkipReplace(newStrSlice []string, c string) (string, bool) {
  if len(newStrSlice) == 0 {
  	return "", true
  }
  
  lastStr := newStrSlice[len(newStrSlice)-1]
  if lastStr == c {
  	return lastStr, false
  }
  return "", true
}
                          
func replaceAppend(newStrSlice []string, str string, alphabet []string) []string {
  for _, s := range alphabet {
    if (s == str) {
    	continue
    }
    newStrSlice = append(newStrSlice, s)
    return newStrSlice
  }
  return newStrSlice
}
