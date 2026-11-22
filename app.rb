require_relative 'lib/cinema'

# Змінюй ці дані та запускай програму ще раз.
age = 14
count = 2
booked_seats = [2, 4]
snack = 'попкорн'

puts "Ласкаво просимо до #{cinema_name}!"
puts "Вік: #{age} років"
puts "Ціна одного квитка: #{ticket_price(age)} грн"
puts "Кількість квитків: #{count}"
puts "Разом за квитки: #{total_price(age, count)} грн"

if allowed_to_watch?(age)
  puts 'Фільм 12+: перегляд дозволено'
else
  puts 'Фільм 12+: ще зарано дивитися'
end

puts "Снеки: #{snacks.join(', ')}"
puts "Ціна снека «#{snack}»: #{snack_price(snack)} грн"
puts "Вільні місця: #{free_seats(booked_seats).join(', ')}"
