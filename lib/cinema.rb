def cinema_name
  'LIT Cinema'
end

def ticket_price(age)
  if age < 12
    80
  elsif age < 18
    100
  else
    150
  end
end

def total_price(age, count)
  ticket_price(age) * count
end

def allowed_to_watch?(age)
  age >= 12
end

def snacks
  ['попкорн', 'сік', 'начос']
end

def snack_price(name)
  prices = {
    'попкорн' => 60,
    'сік' => 40,
    'начос' => 70
  }

  prices[name]
end

def free_seats(booked_seats)
  all_seats = [1, 2, 3, 4, 5]

  all_seats - booked_seats
end
