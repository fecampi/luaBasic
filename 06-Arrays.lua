-------- One-Dimensional Array
print("--One-Dimensional Array")

array = {"Lua", "Tutorial"}
for i = 0, 2 do print(array[i]) end

-------- Multi-Dimensional 
print("-- Multi-Dimensional")

-- Initializing the array
max = 4
array = {}
for line=1,max do
   array[line] = {}
      for col=1,max do
         array[line][col] = "line = "..line..", col = "..col
      end
end

-- Accessing the array
for line=1,max do
    for col=1,max do
       print(array[line][col])
    end
 end
