

def line(deli)
  if deli.size.zero?
    puts 'The line is currently empty.'
  else
    current_line = 'The line is currently:'
    deli.each_with_index do |name, index|
      current_line.concat(" #{index + 1}. #{name}")
    end
    puts current_line
  end
end

def take_a_number(deli_line, new_name)
  deli_line.push(new_name)
  puts "Welcome, #{new_name}. You are number #{deli_line.size} in line."
end

def now_serving(deli_line)
  if deli_line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line[0]}."
    deli_line.shift
  end
end