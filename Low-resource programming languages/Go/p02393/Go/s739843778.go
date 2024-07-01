package main

import "fmt"
//import "strings"
//import "strconv"

func swap(a, b int)(int, int){
    return b, a 
}

func main(){

   // var s []string
    var n []int
   // var in_s string

var a int
for fmt.Scanf("%d", &a) ; a != '\n'{

if a != ' '{ 
n = append(n, a) 
}

}   

// fmt.Scanln(&in_s)
//s = strings.Fields(in_s)    
//    for _, v := range s{
//        x, _ := strconv.Atoi(v)
//        n = append(n, x)
//    }
//var a, b, c int
//fmt.Scanf("%d%d%d", &a, &b, &c) ;
//n = append(n, a)
//n = append(n, b)
//n = append(n, c)
 
    for i:= 0; i < len(n) - 1; i++ {
        for j := i + 1 ; j < len(n) ; j++{
           if n[i] > n[j]{
                n[i], n[j] = swap(n[i], n[j])
           }
        }
    } 
    
    fmt.Println(n[0], n[1], n[2])


}
