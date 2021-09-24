require 'rspec'
require './lib/dictionary'

describe Dictionary do
  let(:reader) { Reader.new('message.txt') }
  let(:dictionary) {Dictionary.new(reader = Reader.new('message.txt'), {
      'a' => ['0.', '..', '..'],
      'b' => ['0.', '0.', '..'],
      'c' => ['00', '..', '..'],
      'd' => ['00', '.0', '..'],
      'e' => ['0.', '.0', '..'],
      'f' => ['00', '0.', '..'],
      'g' => ['00', '00', '..'],
      'h' => ['0.', '00', '..'],
      'i' => ['.0', '0.', '..'],
      'j' => ['.0', '00', '..'],
      'k' => ['0.', '..', '0.'],
      'l' => ['0.', '0.', '0.'],
      'm' => ['00', '..', '0.'],
      'n' => ['00', '.0', '0.'],
      'o' => ['0.', '.0', '0.'],
      'p' => ['00', '0.', '0.'],
      'q' => ['00', '00', '0.'],
      'r' => ['0.', '00', '0.'],
      's' => ['.0', '0.', '0.'],
      't' => ['.0', '00', '0.'],
      'u' => ['0.', '..', '00'],
      'v' => ['0.', '0.', '00'],
      'w' => ['.0', '00', '.0'],
      'x' => ['00', '..', '00'],
      'y' => ['00', '.0', '00'],
      'z' => ['0.', '.0', '00']
      })}

  describe 'initialize' do
    it 'exists' do
      expect(dictionary).to be_an_instance_of Dictionary
    end

    it 'has a dictionary' do
      library = {
          'a' => ['0.', '..', '..'],
          'b' => ['0.', '0.', '..'],
          'c' => ['00', '..', '..'],
          'd' => ['00', '.0', '..'],
          'e' => ['0.', '.0', '..'],
          'f' => ['00', '0.', '..'],
          'g' => ['00', '00', '..'],
          'h' => ['0.', '00', '..'],
          'i' => ['.0', '0.', '..'],
          'j' => ['.0', '00', '..'],
          'k' => ['0.', '..', '0.'],
          'l' => ['0.', '0.', '0.'],
          'm' => ['00', '..', '0.'],
          'n' => ['00', '.0', '0.'],
          'o' => ['0.', '.0', '0.'],
          'p' => ['00', '0.', '0.'],
          'q' => ['00', '00', '0.'],
          'r' => ['0.', '00', '0.'],
          's' => ['.0', '0.', '0.'],
          't' => ['.0', '00', '0.'],
          'u' => ['0.', '..', '00'],
          'v' => ['0.', '0.', '00'],
          'w' => ['.0', '00', '.0'],
          'x' => ['00', '..', '00'],
          'y' => ['00', '.0', '00'],
          'z' => ['0.', '.0', '00']
          }

      expect(dictionary.library).to eq(library)
    end
  end

  describe '#change_code' do
    it 'changes code to braille' do
      result =  [['0.', '..', '..'], ['0.', '0.', '..'], ['00', '..', '..'],
      ['00', '.0', '..'], ['0.', '.0', '..'], ['00', '0.', '..'], ['00', '00', '..'],
      ['0.', '00', '..'], ['.0', '0.', '..'], ['.0', '00', '..'], ['0.', '..', '0.'],
      ['0.', '0.', '0.'], ['00', '..', '0.'], ['00', '.0', '0.'], ['0.', '.0', '0.'],
      ['00', '0.', '0.'], ['00', '00', '0.'], ['0.', '00', '0.'], ['.0', '0.', '0.'],
      ['.0', '00', '0.'], ['0.', '..', '00'], ['0.', '0.', '00'], ['.0', '00', '.0'],
      ['00', '..', '00'], ['00', '.0', '00'], ['0.', '.0', '00']]

      expect(dictionary.change_code).to eq(result)
    end
  end

  describe '#print_new_code' do
    it 'prints code in braille' do
      expect(dictionary.print_new_code).to eq nil
    end
  end
end

#   describe '#get_first_line' do
#     it 'gets the first line of the braille' do
#         a = '0 . . . . .'
#
#       result = '0 .'
#
#       expect(dictionary.get_first_line(a)).to eq(result)
#     end
#   end
#
#   describe '#get_second_line' do
#     it 'gets the first line of the braille' do
#         a = '0 . . . . .'
#
#       result = '. .'
#
#       expect(dictionary.get_second_line(a)).to eq(result)
#     end
#   end
#
#   describe '#get_third_line' do
#     it 'gets the first line of the braille' do
#         a = '0 . . . . .'
#
#       result = '. .'
#
#       expect(dictionary.get_third_line(a)).to eq(result)
#     end
#   end
#
#   describe '#split_hash' do
#     it 'gets the first line of all a hash' do
#       x = {
#         a: '0 . . . . .',
#         b: '0 . 0 . . .',
#         c: '0 0 . . . .',
#         d: '0 0 . 0 . .',
#         e: '0 . . 0 . .',
#         f: '0 0 0 . . .',
#         g: '0 0 0 0 . .',
#         h: '0 . 0 0 . .',
#         i: '. 0 0 . . .',
#         j: '. 0 0 0 . .',
#         k: '0 . . . 0 .'}
#
#       result = {
#         a: ['0 .', '. .', '. .'],
#         b: ['0 .', '0 .', '. .'],
#         c: ['0 0', '. .', '. .'],
#         d: ['0 0', '. 0', '. .'],
#         e: ['0 .', '. 0', '. .'],
#         f: ['0 0', '0 .', '. .'],
#         g: ['0 0', '0 0', '. .'],
#         h: ['0 .', '0 0', '. .'],
#         i: ['. 0', '0 .', '. .'],
#         j: ['. 0', '0 0', '. .'],
#         k: ['0 .', '. .', '0 .']}
#
#       expect(dictionary.split_hash(x)).to eq(result)
#     end
#   end
#
#   describe '#print' do
#     xit 'prints the split hash' do
#       require 'pry'; binding.pry
#       expect(dictionary.print).to eq nil
#     end
#   end
# end
