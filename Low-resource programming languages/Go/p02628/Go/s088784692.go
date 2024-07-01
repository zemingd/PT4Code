package main

import (
    "bufio"
    "fmt"
    "os"
                "strings"
                "strconv"
                "sort"
)

type IntArray []int
func (p IntArray) Len() int           {return len(p);}
func (p IntArray) Less(i, j int) bool {return p[i] < p[j];}
func (p IntArray) Swap(i, j int)      {p[i], p[j] = p[j], p[i];}

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    scanner.Scan()
                tmp := scanner.Text()
                arr := strings.Split(tmp, " ")
//              N, _ := strconv.Atoi(arr[0])
                K, _ := strconv.Atoi(arr[1])
    scanner.Scan()
                tmp2 := scanner.Text()
                arr2 := strings.Split(tmp2, " ")
                s := []int{}
                i := 0
                for value := range arr2 {
                        i, _ = strconv.Atoi(arr2[value])
                  s = append(s, i)
          }
                a := IntArray(s);
                sort.Sort(a);
//      fmt.Println(a)
                sum := 0
    for  ii := 0; ii < K; ii++  {
                        sum = sum + a[ii]
                }
        fmt.Println(sum)
}