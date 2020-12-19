"MIT License"

"Copyright (c) 2020 Jean-Jacques François Reibel"

"Permission is hereby granted, free of charge, to any person obtaining a copy"
"of this software and associated documentation files (the ""Software""), to deal"
"in the Software without restriction, including without limitation the rights"
"to use, copy, modify, merge, publish, distribute, sublicense, and/or sell"
"copies of the Software, and to permit persons to whom the Software is"
"furnished to do so, subject to the following conditions:"

"The above copyright notice and this permission notice shall be included in all"
"copies or substantial portions of the Software."

"THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR"
"IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,"
"FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE"
"AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER"
"LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"
"OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE"
"SOFTWARE."

Object subclass: Car [
    | wheels doors cylinders |
    
    Car class >> new [
        | myCar |
        myCar := super new.
        myCar init.
        ^myCar
    ]
    init [
        wheels := 4.
        doors := 4.
        cylinders := 4.
    ]
    addWheels: wheelsIn [
        wheels := wheels + wheelsIn.
        ^wheels
    ]
    addDoors: doorsIn [
        doors := doors + doorsIn.
        ^doors
    ]
    addCylinders: cylindersIn [
        cylinders := cylinders + cylindersIn.
        ^cylinders
    ]
    deleteWheels: wheelsIn [
        wheels := wheels - wheelsIn.
        ^wheels
    ]
    deleteDoors: doorsIn [
        doors := doors - doorsIn.
        ^doors
    ]
    deleteCylinders: cylindersIn [
        cylinders := cylinders - cylindersIn.
        ^cylinders
    ]
    printInfo [
        Transcript show: 'Wheel check: ', wheels printString.
        Transcript cr.
        Transcript show: 'Door check: ', doors printString.
        Transcript cr.
        Transcript show: 'Cylinder check: ', cylinders printString.
        Transcript cr.
        Transcript cr.
    ]
]
Transcript show: 'Creating car.'.
Transcript cr.
subaru := Car new.
subaru printInfo.
Transcript show: 'Accessing object variables in Smalltalk must be done with class methods.'.
Transcript cr.
Transcript show: 'They cannot be directly accessed.'.
Transcript cr.
Transcript show: 'Adding wheel using object method.'.
Transcript cr.
subaru addWheels: 1.
subaru printInfo.
Transcript show: 'Removing wheel using object method.'.
Transcript cr.
subaru deleteWheels: 1.
subaru printInfo.
