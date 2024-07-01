package main

import (
    "bufio"
    "fmt"
    "os"
    "strings"
    "strconv"
    "sort"
)

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    var r string
    var eof bool
    var answers []int
    for {
        r, eof = readOneLine(scanner)
        if (eof) {
            break;
        }
        answers = append(answers, s2i(r))
    }
    res := sum(answers)
    fmt.Print(6 - res)
}

func readOneLine(scanner *bufio.Scanner) (string, bool) {
    var s string
    var eof = false
    if scanner.Scan() {
        s = scanner.Text()
    } else {
        eof = true
    }
    return s, eof
}

func s2i(s string) int {
    var intVal,_ = strconv.Atoi(s)
    return intVal
}

func i2s(i int) string {
    return string(i)
}

func s2f(s string) float64 {
    var floatVal,_ = strconv.ParseFloat(s, 64)
    return floatVal
}

func sum(i []int) int {
    sum := 0
    for _,val := range i {
        sum += val
    }
    return sum
}

func split(s string) []string {
    return strings.Fields(s)
}

func strAry2intAry(strs []string) []int {
    var ret = make([]int, 0, len(strs))
    for _ , str := range strs {
        var intVal, _ = strconv.Atoi(string(str));
        ret = append(ret, intVal)
    }
    return ret
}

func intAry2strAry(nums []int) []string {
    var ret = make([]string, 0, len(nums))
    for _ , num := range nums {
        var strVal = strconv.Itoa(num);
        ret = append(ret, strVal)
    }
    return ret
}

func ary2str(strs []string) string {
    return strings.Join(strs, " ")
}


type Country struct {
    gold int
    silver int
    blonze int
}

// 複数ソートのサンプル
func stableSortExample() []Country{
    var country = []Country {
        {gold:1, silver:2, blonze:3},
        {gold:1, silver:2, blonze:3},
        {gold:1, silver:3, blonze:2},
        {gold:1, silver:3, blonze:3},
    }
    sort.SliceStable(country, func(i, j int) bool { return country[i].blonze > country[j].blonze })
    sort.SliceStable(country, func(i, j int) bool { return country[i].silver > country[j].silver })
    sort.SliceStable(country, func(i, j int) bool { return country[i].gold > country[j].gold })
    return country

}