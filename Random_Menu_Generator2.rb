taste = []
cooking_style = []
food = []

taste_counter = []
cooking_style_counter = []
food_counter = []

puts "\nHow many menu items do you want to see (choose a number between 1 and 10)?"
user_choice = gets.chomp.to_i
until user_choice >= 1 && user_choice <= 10
  puts "\nChoose a number between 1 and 10."
  user_choice = gets.chomp.to_i
end

user_choice.times do |x|
        puts "\nEnter a taste adjective:"
        taste_adj = gets.chomp
        while taste.include? taste_adj
          puts "\nYou already entered this adjective. Enter a new adjective:"
          taste_adj = gets.chomp
        end
        taste << taste_adj
end

user_choice.times do
        puts "\nEnter a cooking style:"
        cooking_style_adj = gets.chomp
        while cooking_style.include? cooking_style_adj
          puts "\nYou already entered this adjective. Enter a new adjective:"
        cooking_style_adj = gets.chomp
        end
        cooking_style << cooking_style_adj
end

user_choice.times do
        puts "\nEnter a food type:"
        food_adj = gets.chomp
        while food.include? food_adj
          puts "\nYou already entered this adjective. Enter a new adjective:"
          food_adj = gets.chomp
        end
        food << food_adj
end


user_choice.times do |i|
        taste_choice = taste[rand(0...user_choice)]
        cooking_style_choice = cooking_style[rand(0...user_choice)]
        food_choice = food[rand(0...user_choice)]

    while (taste_counter.include? taste_choice) || (cooking_style_counter.include? cooking_style_choice) || (food_counter.include? food_choice)
      taste_choice = taste[rand(0...user_choice)]
      cooking_style_choice = cooking_style[rand(0...user_choice)]
      food_choice = food[rand(0...user_choice)]
    end

    taste_counter << taste_choice
    cooking_style_counter << cooking_style_choice
    food_counter << food_choice

  puts "#{i+1}. #{taste_choice} #{cooking_style_choice} #{food_choice}\n"

end
