@stick1=[3,2,1]
@stick2=[]
@stick3=[]

def display_sticks
  puts @stick1.to_s
  puts
  puts
  puts @stick2.to_s
  puts
  puts
  puts @stick3.to_s
  puts
  puts
end

def get_stick(number_entered)
  if number_entered =~ /1.*/
    @stick1
  elsif number_entered =~ /2.*/
    @stick2
  elsif number_entered =~ /3.*/
    @stick3
  end
end
def ask_for_move
  puts 'move from'
  move_from = gets
  puts 'move to'
  move_to = gets
  return get_stick(move_from), get_stick(move_to)
end

def execute_move(move_from, move_to)
  from_stick = move_from
  to_stick = move_to
  to_stick.push(from_stick.pop)
end

def validate_move(move_from, move_to)
  if move_from.empty?
    puts "you can't do this move because it is empty"
    return false
  elsif !move_to.empty? && move_from.last>move_to.last
    puts "you can't do this move because the bottom one is smaller then the top one"
    return false
  end
  true
end

while(@stick3.count < 3)

  display_sticks
  move_from, move_to = ask_for_move()
  if validate_move(move_from, move_to)
    execute_move(move_from, move_to)
  end
end
display_sticks
 puts 'you have made it'





