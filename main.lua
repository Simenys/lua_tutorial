local x = 5
print(x)
print(" ")
print(x)

-- convert number to string
local str = "22"
print(type(str)) --prints string
print(tonumber(str)) -- converts to number
print(type(str)) -- still prints string
print(type(tonumber(str))) -- prints number
print(" ")
print(math.pi)
print(math.random(10))
print(math.random(10, 50))

-- strings
print(" ")
print("---- This is a STRING ----")
print(" ")
local str = "Hello world"
print(str)
print(#str) -- lenght of a string
local x = 22
local y = tostring(x)

-- if statements
print(" ")
print("---- This is a IF STATEMENT ----")
print(" ")
if true then
    print("Statment was true")
end

local age = 20
if age > 17 and age < 60 then
    print("You may enter")
end


-- loops
print(" ")
print("---- This is a LOOPS ----")
print(" ")
for i = 1, 10, 1 do
    print(i)
end

local start_val, end_val, step_val = 1, 10, 1
for i = start_val, end_val, step_val do
    print(i)
end

local arr = {1, 5, 98, 365, 24, 3, 2} -- for with array
for i = 1, #arr do
    print(arr[i])
end

-- while loop
print(" ")
print("---- This is a WHILE LOOP ----")
print(" ")
print("\n")
local peeps = 10
while peeps > 0 do
    peeps = peeps - 1
    print("People left at party: " .. peeps)
end

local run = true
local runtime = 0

while run do
    print("running")

    if runtime == 10 then
        run = false
    end

    runtime = runtime + 1
end

-- repeat
print(" ")
print("---- This is a REPEAT ----")
print(" ")
local x = 1

repeat
    print("Hey there")
    x = x + 1    
until x > 10

-- user input
print("What is 10 + 5?")
local answer = io.read()
if tonumber(answer) == 15 then
    print("Correct!")
else 
    print("Wrong!")
end
-- user input
print(" ")
print("---- This is a USER INPUT ----")
print(" ")
local num1, num2 = 10, 5
local true_ans = num1 + num2

io.write("input " .. num1 .. " + " .. num2 .. ": ")
local ans = io.read()

if tonumber(ans) == true_ans then
    print("You are correct!")
else 
    print("Your answer, " .. ans .. ", is wrong!")
end

-- tables
print(" ")
print("---- This is a TABLES (ARRAYS) ----")
print(" ")
local x = 10
local y = 15
local z = 20
-- is same as 
local arr = {10, 15, 20}
print(arr[1])

-- 
local arr = {
    {1, 2, 3},
    {6, 10, 100},
    {0, 5, 7}
}

for i = 1, #arr do
    for j = 1, #arr[i] do
        print(arr[i][j])
    end
end
-- functions
print(" ")
print("---- This is a FUNCTION ----")
print(" ")
function displayAge(age)
    age = age or 36 -- define parameter if nothing will be passed 
    print("I am " .. age .. " years old")
    print("I will be " .. age + 2 .. " years old in two years")
    print("I was " .. age - 1 .. " years old last year")
end

displayAge(36)

print(" ")
print("---- This is a FUNCTION 2 ----")
print(" ")
local function sum(num1, num2)
    return num1 + num2
end

local x = sum(2, 3)
print(x)

print(" ")
print("---- This is a FUNCTION 3 ----")
print(" ")

local add10 = function(number)
    local outcome = 10 + number
    return number, outcome
end

local stored, output = add10(20)

print(stored .. " had 10 added to it: " .. output)

-- Recursive function
print(" ")
print("---- This is a RECURSIVE FUNCTION ----")
print(" ")

local function counter(number, end_num)
    local count = number + 1

    if (count < end_num) then
        return counter(count, end_num) -- here we return the function thats why it goes as a loop 
    end

    return count
end

print(counter(10, 15))


print(" ")
print("---- This is a FUNCTION WITH INFINITE ARGUMENTS ----")
print(" ")

local function sum(...) -- you can pas as many arguments as you want
    local sums = 0
    for key, value in pairs({...}) do -- kei is index, and value is the valuae stored in that index
       sums = sums + value 
    end

    return sums
end

print(sum(10, 5, 20, 21, 16, 3))

print(" ")
print("---- This is a CO-ROUTINES ----")
print(" ")
-- example bellow for a visual could be refered to loading bar
local routine_1 = coroutine.create(
    function ()
        for i = 1, 10, 1 do
            print("Routine 1: " .. i)

            if i == 5 then
                coroutine.yield()
            end

        end
    end
)

local routine_func = function ()
    for i = 11, 20, 1 do
        print("Routine 2: " .. i)
    end
end
local routine_2 = coroutine.create(routine_func)
coroutine.resume(routine_1)
coroutine.resume(routine_2)
if coroutine.status(routine_1) == "suspended" then
    coroutine.resume(routine_1)
end
-- print(coroutine.status(routine_1))
-- coroutine.resume(routine_1)
-- print(coroutine.status(routine_1))