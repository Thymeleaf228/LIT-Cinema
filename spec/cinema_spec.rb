require_relative '../lib/cinema'

RSpec.describe 'Кінотеатр' do
  it 'повертає назву кінотеатру' do
    result = cinema_name

    expect(result).to eq('LIT Cinema')
  end

  it 'повертає ціну квиток для 10 дитина' do
    result = ticket_price(10)

    expect(result).to eq(80)
  end

  it 'повертає ціну квиток для 14 підлітка' do
    result = ticket_price(14)

    expect(result).to eq(100)
  end

  it 'повертає ціну квиток для 20 дорослого' do
    result = ticket_price(20)

    expect(result).to eq(150)
  end

  it 'повертає ціну за три квитки за тарифом для віку 10 років' do
    result = total_price(10, 3)

    expect(result).to eq(240)
  end

  it 'повератє доступ до фільму у 12 років' do
    result = allowed_to_watch?(12)

    expect(result).to be(true)
  end

  it 'повератє доступ до фільму у 11 років' do
    result = allowed_to_watch?(11)

    expect(result).to be(false)
  end

  it 'повертає чи є попкорн у списку снеків' do
    result = snacks

    expect(result).to include('попкорн')
  end

  it 'повертає чи є піца у списку снеків' do
    result = snacks

    expect(result).not_to include('піца')
  end

  it 'повертає ціну соку' do
    result = snack_price('сік')

    expect(result).to eq(40)
  end

  it 'повертає ціну невідомого піца' do
    result = snack_price('піца')

    expect(result).to be_nil
  end

  it 'повертає вільні місця, коли зайняті' do
    result = free_seats([2, 4])

    expect(result).to eq([1, 3, 5])
  end

  it 'повертає вільні місця, коли зайняті всі' do
    result = free_seats([1, 2, 3, 4, 5])

    expect(result).to be_empty
  end

  it 'повертає вільні місця, коли зайнятих немає' do
    result = free_seats([])

    expect(result).to eq([1, 2, 3, 4, 5])
  end
end
