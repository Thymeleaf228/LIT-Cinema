require_relative '../lib/cinema'

RSpec.describe 'Кінотеатр' do
  it 'повертає назву кінотеатру' do
    result = cinema_name

    expect(result).to eq('LIT Cinema')
  end
end
