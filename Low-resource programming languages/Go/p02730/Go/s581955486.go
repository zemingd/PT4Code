package main

import (
    "fmt"
)


func Reverse(s string) string {
    runes := []rune(s)
    for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
        runes[i], runes[j] = runes[j], runes[i]
    }
    return string(runes)
}

func main() {
    var str, test1, test2 string
    fmt.Scan(&str)
  
    var length int = len(str)
  
    for index, s := range str {
        if index < (length-1)/2 {
            test1 += string(s)
        }
        
        if index > (index+3)/2 && index < length {
            test2 += string(s)
        }
    }
    
    var rev1 string = Reverse(test1)
    var rev2 string = Reverse(test2)
    if test1 != rev1 || test2 != rev2 {
        fmt.Println("No")
    } else {
        fmt.Println("Yes")
    }
}