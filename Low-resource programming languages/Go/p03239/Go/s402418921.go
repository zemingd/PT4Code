package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getArgs() [][]string {
    args := [][]string{}
    var line string
    for ;sc.Scan(); {
        line = sc.Text()
        split := strings.Split(line, " ")
        args = append(args, split)
    }
    return args
}

func main() {
	args := getArgs()
	T,_ := strconv.Atoi(args[0][1])
	
	var flag_foundroute bool
	c_best := 1001
	
	for _, arg := range args[1:] {
	    c,_ := strconv.Atoi(arg[0])
	    t,_ := strconv.Atoi(arg[1])
	    if t<=T && c < c_best{
	        c_best = c
	        flag_foundroute = true
	    }
	}
	if !flag_foundroute {
	    fmt.Println("TLE")
	} else {
	    fmt.Println(c_best)
	}
}