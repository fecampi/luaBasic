------------------1-Sequencia-----------------------
print("--Sequencia--")
-- ax²+bx+x=0
-- x1 = (-b -sqrt(delta))/(2*a)
-- x1 = (-b +sqrt(delta))/(2*a)
-- delta = b² -4ac

-- x^2 -5x + 6 =  0
a = 1
b = -5
c = 6

delta = b ^ 2 - 4 * a * c
x1 = (-b - math.sqrt(delta)) / (2 * a)
x2 = (-b + math.sqrt(delta)) / (2 * a)
print("x1= " .. x1 .. " e x2=" .. x2)

---------------------2-Seleção---------------------

print("--seleção-")
a = 150

if( a == 10 )
then
   print("Value of a is 10" )
elseif( a == 20 )
then   
   print("Value of a is 20" )
elseif( a == 30 )
then
   print("Value of a is 30" )
else
   print("None of the values is matching" )
end


-- 3-Repetição
print("--Repetição")

v = {2,3,4,5,6,7,8}
for i=1,#v do
    print(v[i])
end
