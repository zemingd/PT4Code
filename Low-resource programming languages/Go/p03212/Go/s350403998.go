package main

import "math"
import "strings"
import "fmt"
import "strconv"

func main(){    
    var N int
    fmt.Scanf("%d", &N)

    digit := int(math.Floor(math.Log10(float64(N)))) + 1
    //fmt.Printf("digit -> %d\n", digit)
    numStrs := make([]string, 0)
    for i:=3; i<=digit; i++ {
        nums := gen753NumStrs(i)
        numStrs = append(numStrs, nums...)
    }
    /*
    for _, t := range numStrs{
        fmt.Printf("%s\n", t)
    }
    */
    count :=0 
    for _, str := range numStrs {
        if strings.Contains(str, "3") && strings.Contains(str, "5") && strings.Contains(str, "7") {
            num, _ := strconv.Atoi(str)
            if num <= N {
                //fmt.Printf("num -> %d\n", num)
                count += 1
            }
        }
    }

    fmt.Printf("%d\n", count)
}

var NUMS753 = []string{"3", "5", "7"}

func gen753NumStrs(digit int) []string{
    if digit == 1 {
        return NUMS753
    }

    strs := make([]string, 0)
    preStrs := gen753NumStrs(digit - 1)
    for _, preStr := range preStrs {
        for _, s := range NUMS753 {
            str := s + preStr
            strs = append(strs, str)
        }
        
    }
    return strs
}

