#puts "Type number"
#input = gets.chomp.to_f
#resutl = input * 4
#puts "#{resutl} legs"

0.upto(10) do |i|
  puts "test #{i}"
end


10.downto(0) do |i|
  puts "downto #{i}"
end

x=0
while x < 10
  x = x + 1
  puts x
end

puts "while test #{x}"

bvalue = false
if bvalue
  puts "bvalue is #{bvalue}"
else
  puts "bvalue is #{bvalue}"
end


def sumRange(a,b)
  sum = 0
  a.upto(b) do |i|
   sum = sum + i
   puts sum
   end
  puts sum
end


sumRange(1,10)

array = Array.new
puts array.inspect
array << "sung"
array << [1,2,3,4]
array << 1234567
puts array.inspect

puts array.reverse.inspect


hash = {:name => "sung", :isMale => true}
puts hash

hash2 = Hash.new
hash2[:name] = "sung"
hash2[:isMale] = true;

puts hash2

puts hash[:name]


def draw(num)
  draw_array = Array.new
  while draw_array.size < num
     draw_array << (1..45).to_a.sample(6).sort   
  end
return draw_array
end

def lot(win_array, num)
  result = draw(num)
  result.each do |a|
    if a == result.sort
      puts "congratulation!!"
    else
      puts "failed!!"
    end
  end
end

def lot2(win_array, num)
  result = draw(num)
  result.each do |a|
    if a == win_array.sort
      puts "1st"
    elsif (win_array & a).size == 5
      puts "2nd"
    else
      puts "Pung"
    end
  end
end

def par_check(str)
  par_array = str.split('')
  open = 0
  close = 0
  
  par_array.each do |p|
    if p == "("
      open += 1
    elsif p == ")"
      close += 1      
    end
    
  end
  
  if open != close
    puts "flase!!!"
  end
end


t_array = [
  [1,2,3,4,5,6,10],
  [45,34],
  [34,1,23,66],
  [1,2,3,4,7,89,3,5,3]
]

def mean(array)
  sum = 0
  array.each do |a|
      sum += a
  end
  return sum.to_f / array.size
end

t_array.sort! { |a1, a2| mean(a1) <=> mean(a2)}

t_array.each do |aa|
  puts aa.inspect
end

