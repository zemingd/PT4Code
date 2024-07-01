package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"sync"
	"time"
)

const scBufSize = 1 * 1024 * 1024 // 1MB

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, scBufSize), scBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func scani() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanRoad() (o, d int) {
	o = scani()
	d = scani()
	return
}

var sp = []byte(" ")

var wg = &sync.WaitGroup{}
var lock1 = &sync.Mutex{}
var lock2 = &sync.Mutex{}

func main() {
	start := time.Now()
	n := scani()
	for i := 1; i <= n; i++ {
		cities[i] = NewCity(i)
	}
	k := scani()
	l := scani()
	// Road
	for i := 1; i <= k; i++ {
		o, d := scanRoad()
		cities[o].AddRoad(cities[d])
		cities[d].AddRoad(cities[o])
	}
	fmt.Printf("CH1: %s\n", time.Since(start))
	start = time.Now()
	// Rail
	for i := 1; i <= l; i++ {
		o, d := scanRoad()
		cities[o].AddRail(cities[d])
		cities[d].AddRail(cities[o])
	}
	fmt.Printf("CH2: %s\n", time.Since(start))
	start = time.Now()

	for _, v := range cities {
		done := []int{v.n}
		// fmt.Printf("%v\n", v)
		wg.Add(2)
		go v.connectedRoad(done)
		go v.connectedRail(done)
		// fmt.Printf("  %v\n", v)
	}
	wg.Wait()
	fmt.Printf("CH3: %s\n", time.Since(start))
	start = time.Now()

	for i := 1; i <= len(cities); i++ {
		v := cities[i]
		fmt.Printf("%v\n", v)
		// fmt.Printf("\n%d / %d : %d\n", v.n, v.retRoad, v.retRail)
		os.Stdout.WriteString(dup(v.n, v.retRoad, v.retRail))
		os.Stdout.Write(sp)
	}
	fmt.Printf("CH3: %s", time.Since(start))

}

func dup(n int, i, j map[int]struct{}) string {
	m := make(map[int]interface{})
	for v, _ := range i {
		m[v] = nil
	}
	for v, _ := range j {
		if _, ok := m[v]; ok {
			m[v] = v
		}
	}

	c := 1
	// fmt.Printf("  %v\n", m)
	for k, v := range m {
		if k == n {
			continue
		}
		if v != nil {
			c++
		}
	}
	return strconv.Itoa(c)
}

type City struct {
	n       int
	cRoad   []*City
	cRail   []*City
	retRoad map[int]struct{}
	retRail map[int]struct{}
}

func NewCity(n int) *City {
	return &City{
		n:       n,
		cRoad:   []*City{},
		cRail:   []*City{},
		retRoad: make(map[int]struct{}),
		retRail: make(map[int]struct{}),
	}
}

func (c1 *City) AddRoad(c2 *City) {
	c1.cRoad = append(c1.cRoad, c2)
}
func (c1 *City) AddRail(c2 *City) {
	c1.cRail = append(c1.cRail, c2)
}

func (c *City) connectedRoad(done []int) []int {
	defer wg.Done()
	var ret []int
	for _, r := range c.cRoad {
		skip := false
		for _, v := range done {
			if r.n == v {
				skip = true
			}
		}
		ret = append(ret, r.n)
		if !skip {
			wg.Add(1)
			ret = append(ret, r.connectedRoad(append(done, r.n))...)
		}
	}

	lock1.Lock()
	for _, v := range ret {
		c.retRoad[v] = struct{}{}
	}
	lock1.Unlock()
	return ret
}

func (c *City) connectedRail(done []int) []int {
	defer wg.Done()
	var ret []int
	for _, r := range c.cRail {
		skip := false
		for _, v := range done {
			if r.n == v {
				skip = true
			}
		}
		ret = append(ret, r.n)
		if !skip {
			wg.Add(1)
			ret = append(ret, r.connectedRail(append(done, r.n))...)
		}
	}

	lock2.Lock()
	for _, v := range ret {
		c.retRail[v] = struct{}{}
	}
	lock2.Unlock()
	return ret
}

var cities = make(map[int]*City)
