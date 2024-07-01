// きりみんちゃんねるからきました 2020/02/02 22:16

package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code ---*/
	// うしろからみていくかんじ 先頭は適当にaで埋めとけ
	s, t := next(), next()
	for i:=len(s)-len(t); i>=0; i--{
    	flag := true
    	ret := ""
		for j:=0; j<len(t); j++{
			if string([]rune(s)[i+j]) == string([]rune(t)[j]) || string([]rune(s)[i+j]) == "?"{
			    ret += string([]rune(t)[j])
			}else{
			    flag = false
			}
		}
		if flag{
		    // （eうしろからかぞえて）iまでの?を適当にaで埋める
		    pre := ""
		    for k:=0; k<i; k++{
		        if string([]rune(s)[k]) == "?"{
    		        pre += "a"
		        }else{
		            pre += string([]rune(s)[k])
		        }
		    }
		    // これはi+len(t)以降の?に対して適当にaで埋める
		    epi := ""
		    for k:=i+len(t); k<len(s); k++{
		        if string([]rune(s)[k]) == "?"{
    		        epi += "a"
		        }else{
		            epi += string([]rune(s)[k])
		        }
		    }
		    fmt.Println(pre + ret + epi)
		    return
		}
	}
	fmt.Println("UNRESTORABLE")
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func PrintOut(src interface{}, joinner string) {
	switch reflect.TypeOf(src).Kind() {
	case reflect.Slice:
		s := reflect.ValueOf(src)
		for idx := 0; idx < s.Len(); idx++ {
			fmt.Fprintf(out, "%v", s.Index(idx))
			if idx < s.Len()-1 {
				fmt.Fprintf(out, "%s", joinner)
			} else {
				fmt.Fprintln(out)
			}
		}
	default:
		fmt.Fprintln(out, "fuck")
	}
}
